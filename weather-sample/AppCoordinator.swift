//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class AppCoordinator {

    private let window: UIWindow

    init(window: UIWindow) {

        self.window = window
    }

    func start() {

        guard let navigationController = window.rootViewController as? UINavigationController else { return }

        let weatherDetailWireframe = WeatherDetailWireframe(listAPI: Services.listAPI)

        let listWireframe = ListWireframe(navigationController: navigationController,
                                          api: Services.listAPI,
                                          weatherDetailWireframe: weatherDetailWireframe)

        listWireframe.present()
    }
}