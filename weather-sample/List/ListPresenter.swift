//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol ListPresenterInput {
    func didTapRow(row: CommandRow)
    func viewDidLoad()
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

        interactor.getList()
        view?.viewState = .loading
    }

    func didTapRow(row: CommandRow) {

        row.command?.execute()
    }
}

extension ListPresenter: ListInteractorOutput {

    func didGetList(result: Result<ListEntity>) {

        switch result {
            case .success(let entity):
                let viewModelFactory = ListViewModelFactory(listEntity: entity)
//                wireframe.presentWeatherDetails(for: Location)
//
//                BlockCommand { [weak self] in
//                    self?.wireframe.presentWeatherDetails()
//                }

                view?.viewState = .loaded(viewModel: viewModelFactory.create())
            case .failure(_):
                view?.viewState = .error
        }
    }
}
