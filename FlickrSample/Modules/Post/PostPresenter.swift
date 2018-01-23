//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol PostPresenterInput: class {
    func viewDidLoad()
}

class PostPresenter: PostPresenterInput {

    private weak var view: PostView?
    private let wireframe: PostWireframeInput
    private let interactor: PostInteractorInput

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
}

extension PostPresenter: PostInteractorOutput {

    func finishedRetrieving(result: Result<PostEntity>) {

        switch result {
            case .success(let entity):
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
