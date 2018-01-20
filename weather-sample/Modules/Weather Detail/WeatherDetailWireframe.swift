//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

extension UIStoryboard {
    static let weather = UIStoryboard(name: "Detail", bundle: nil)
}


protocol WeatherDetailWireframeInput {
    func present(from navigationController: UINavigationController)
}

class WeatherDetailWireframe: WeatherDetailWireframeInput {

    func present(from navigationController: UINavigationController) {
    }

    private let storyboard: UIStoryboard = .weather
    private let viewControllerIdentifier = "WeatherDetailViewController"
    private let listAPI: ListAPI

    init(listAPI: ListAPI) {

        self.listAPI = listAPI
    }

    func buildModule() -> WeatherDetailView {

        let viewController = instantiateViewController()
        wireUp(viewController: viewController)
        return viewController
    }

    private func instantiateViewController() -> WeatherDetailViewController {

        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        return viewController as! WeatherDetailViewController
    }

    func wireUp(viewController: WeatherDetailViewController) {

        let interactor = WeatherDetailInteractor(api: listAPI)

        let presenter = WeatherDetailPresenter(view: viewController,
                                               wireframe: self,
                                               interactor: interactor)

        interactor.output = presenter
        viewController.presenter = presenter
    }
}
