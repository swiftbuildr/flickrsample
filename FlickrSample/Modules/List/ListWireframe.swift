//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

protocol ListWireframeInput {
    func present(with postEntity: PostEntity)
    func present()
}

extension UIStoryboard {
    static let list = UIStoryboard(name: "Main", bundle: nil)
}

class ListWireframe: ListWireframeInput {

    private let navigationController: UINavigationController
    private let postWireframe: PostWireframeInput
    private let api: PublicFeedRetriever

    private let storyboard: UIStoryboard = .list
    private let viewControllerIdentifier = "ListViewController"


    init(navigationController: UINavigationController,
         api: PublicFeedRetriever,
         postWireframe: PostWireframeInput) {

        self.navigationController = navigationController
        self.api = api
        self.postWireframe = postWireframe
    }

    // MARK: - ListWireframeInput
    func present(with postEntity: PostEntity) {

        postWireframe.present(from: navigationController, with: postEntity)
    }

    func present() {

        navigationController.viewControllers = [buildModule()]
    }

    func buildModule() -> ListViewController {

        let viewController = instantiateViewController()
        wireUp(viewController: viewController)
        return viewController
    }

    // MARK: - Private
    private func instantiateViewController() -> ListViewController {

        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        return viewController as! ListViewController
    }

    private func wireUp(viewController: ListViewController) {

        let interactor = ListInteractor(api: api)

        let presenter = ListPresenter(view: viewController,
                                      wireframe: self,
                                      interactor: interactor)

        interactor.output = presenter
        viewController.presenter = presenter
    }
}
