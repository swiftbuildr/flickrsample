//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class WeatherDetailPresenter {

    private weak var view: WeatherDetailView?
    private let wireframe: WeatherDetailWireframe
    private let interactor: WeatherDetailInteractor

    init(view: WeatherDetailView,
         wireframe: WeatherDetailWireframe,
         interactor: WeatherDetailInteractor) {

        self.view = view
        self.wireframe = wireframe
        self.interactor = interactor
    }
}

extension WeatherDetailPresenter: WeatherDetailInteractorOutput {

}