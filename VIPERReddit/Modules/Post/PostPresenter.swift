//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class PostPresenter {

    private weak var view: PostView?
    private let wireframe: PostWireframe
    private let interactor: PostInteractor

    init(view: PostView,
         wireframe: PostWireframe,
         interactor: PostInteractor) {

        self.view = view
        self.wireframe = wireframe
        self.interactor = interactor
    }
}

extension PostPresenter: PostInteractorOutput {

}