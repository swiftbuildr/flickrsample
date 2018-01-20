//
//  AppDelegate.swift
//  weather-sample
//
//  Created by Samuel Ward on 19/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        guard let navigationController = window?.rootViewController as? UINavigationController else { return true }

        ListWireframe(navigationController: navigationController,
                      api: ListAPI(),
                      weatherDetailWireframe: WeatherDetailWireframe()).present()
        return true
    }
}
