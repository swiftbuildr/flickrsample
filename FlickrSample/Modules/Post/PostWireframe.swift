//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

protocol PostWireframeInput {
    func present(from navigationController: UINavigationController,
                 with item: PostEntity)
}

class PostWireframe: PostWireframeInput {

    private let storyboard: UIStoryboard = .post
    private let viewControllerIdentifier = "PostViewController"

    func present(from navigationController: UINavigationController,
                 with item: PostEntity) {

        navigationController.pushViewController(buildModule(withItem: item), animated: true)
    }

    // MARK: - Private
    private func buildModule(withItem item: PostEntity) -> PostViewController {

        let viewController = instantiateViewController()
        wireUp(viewController: viewController, postEntity: item)
        return viewController
    }

    private func instantiateViewController() -> PostViewController {

        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        return viewController as! PostViewController
    }

    private func wireUp(viewController: PostViewController, postEntity: PostEntity) {

        let interactor = PostInteractor(postEntity: postEntity)

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
