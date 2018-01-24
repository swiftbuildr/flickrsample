//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
import Kingfisher

protocol PostPresenterInput: class {
    func viewDidLoad()
    func didTapShare()
}

class PostPresenter: PostPresenterInput {

    private weak var view: PostView?
    private let wireframe: PostWireframeInput
    private let interactor: PostInteractorInput
    private var entity: PostEntity?

    init(view: PostView,
         wireframe: PostWireframeInput,
         interactor: PostInteractorInput) {

        self.view = view
        self.wireframe = wireframe
        self.interactor = interactor
    }

    func viewDidLoad() {

        interactor.retrieveEntity()
    }

    func didTapShare() {

        guard let entity = entity else { return }

        KingfisherManager.shared.cache.retrieveImage(forKey: entity.media.m.absoluteString,
                                                     options: .none) { (image, cacheType) in

            guard let image = image else { return }
            self.wireframe.presentShare(with: (linkURL: entity.link, imageURL: image))
        }
    }
}

extension PostPresenter: PostInteractorOutput {

    func finishedRetrieving(result: Result<PostEntity>) {

        switch result {
            case .success(let entity):

                self.entity = entity
                let viewModel = buildViewModel(entity: entity)
                view?.state = .loaded(viewModel: viewModel)
            case .failure(_):
                view?.state = .error
        }
    }

    private func buildViewModel(entity: PostEntity) -> PostViewModel {

        let imageRow: PostViewModel.ImageRow?
        if case .image(let url) = URLType(url: entity.media.m) {
            imageRow = PostViewModel.ImageRow(url: url)
        } else {
            imageRow = nil
        }

        let titleRow = PostViewModel.TitleRow(title: entity.title)
        let authorRow = PostViewModel.MetaDataRow(descriptionText: entity.description,
                                                  author: entity.author,
                                                  published: entity.published,
                                                  dateTaken: entity.date_taken,
                                                  tags: entity.tags)

        let rows: [Rowable?] = [
            imageRow,
            titleRow,
            authorRow,
        ]

        let viewModel = PostViewModel(title: entity.title,
                                      rows: rows.flatMap { $0 })
        return viewModel
    }
}
