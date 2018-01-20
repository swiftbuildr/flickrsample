//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

extension UIStoryboard {
    static let post = UIStoryboard(name: "Post", bundle: nil)
}

protocol PostWireframeInput {
    func present(from navigationController: UINavigationController, withId id: String)
}

class PostWireframe: PostWireframeInput {

    func present(from navigationController: UINavigationController) {
    }

    private let storyboard: UIStoryboard = .post
    private let viewControllerIdentifier = "PostViewController"
    private let listAPI: ListAPI

    init(listAPI: ListAPI) {

        self.listAPI = listAPI
    }

    func buildModule() -> PostViewController {

        let viewController = instantiateViewController()
        wireUp(viewController: viewController)
        return viewController
    }

    private func instantiateViewController() -> PostViewController {

        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        return viewController as! PostViewController
    }

    func wireUp(viewController: PostViewController) {

        let interactor = PostInteractor(api: listAPI)

        let presenter = PostPresenter(view: viewController,
                                      wireframe: self,
                                      interactor: interactor)

        interactor.output = presenter
        viewController.presenter = presenter
    }
    
    func present(from navigationController: UINavigationController, withId id: String) {
        
        navigationController.pushViewController(buildModule(), animated: true)
    }
}
