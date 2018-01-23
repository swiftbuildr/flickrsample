//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

protocol PostWireframeInput {
    func present(from navigationController: UINavigationController, withId id: String)
}

class PostWireframe: PostWireframeInput {

    private let storyboard: UIStoryboard = .post
    private let viewControllerIdentifier = "PostViewController"
    private let listAPI: ListAPIInterface

    init(listAPI: ListAPIInterface) {

        self.listAPI = listAPI
    }

    func present(from navigationController: UINavigationController, withId id: String) {

        navigationController.pushViewController(buildModule(withPostId: id), animated: true)
    }

    // MARK: - Private
    private func buildModule(withPostId postId: String) -> PostViewController {

        let viewController = instantiateViewController()
        wireUp(viewController: viewController, postId: postId)
        return viewController
    }

    private func instantiateViewController() -> PostViewController {

        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        return viewController as! PostViewController
    }

    private func wireUp(viewController: PostViewController, postId: String) {

        let interactor = PostInteractor(api: listAPI, postId: postId)

        let presenter = PostPresenter(view: viewController,
                                      wireframe: self,
                                      interactor: interactor)

        interactor.output = presenter
        viewController.presenter = presenter
    }
}

extension UIStoryboard {
    static let post = UIStoryboard(name: "Post", bundle: nil)
}
