//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol ListPresenterInput {
    func viewDidLoad()
    func reloadTriggered()
}

class ListPresenter: ListPresenterInput {

    weak var view: ListView?

    private let wireframe: ListWireframeInput
    private let interactor: ListInteractorInput

    init(view: ListView,
         wireframe: ListWireframeInput,
         interactor: ListInteractorInput) {

        self.wireframe = wireframe
        self.interactor = interactor
        self.view = view
    }

    func viewDidLoad() {

        reloadTriggered()
    }

    func reloadTriggered() {
        
        view?.state = .loading
        interactor.getList()
    }
}

extension ListPresenter: ListInteractorOutput {

    func didGetList(result: Result<ListEntity>) {

        switch result {
            case .success(let entity):
                let viewModelFactory = ListViewModelFactory(listEntity: entity,
                                                            presentItemWithId: { postEntity in
                                                                self.wireframe.present(with: postEntity)
                                                            })
                view?.state = .loaded(viewModel: viewModelFactory.create())
            case .failure(_):
                view?.state = .error
        }
    }
}
