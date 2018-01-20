//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

protocol ListWireframeInput {
    func presentWeatherDetails(for location: String)
    func present()
}

extension UIStoryboard {
    static let list = UIStoryboard(name: "Main", bundle: nil)
}

class ListWireframe: ListWireframeInput {

    private let navigationController: UINavigationController
    private let weatherDetailWireframe: WeatherDetailWireframeInput
    private let api: ListAPI

    private let storyboard: UIStoryboard = .list
    private let viewControllerIdentifier = "ListViewController"


    init(navigationController: UINavigationController,
         api: ListAPI,
         weatherDetailWireframe: WeatherDetailWireframeInput) {

        self.navigationController = navigationController
        self.api = api
        self.weatherDetailWireframe = weatherDetailWireframe
    }

    func buildModule() -> ListViewController {

        let viewController = instantiateViewController()
        wireUp(viewController: viewController)
        return viewController
    }

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
    
    // MARK: - ListWireframeInput
    func presentWeatherDetails(for location: String) {
        
        weatherDetailWireframe.present(from: navigationController)
    }
    
    func present() {
        navigationController.viewControllers = [buildModule()]
    }
}
