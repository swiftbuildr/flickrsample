//
// Created by Samuel Ward on 24/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

protocol ShareWireframeInput {
    func present(from viewController: UIViewController,
                 with image: UIImage)
}

class ShareWireframe: ShareWireframeInput {

    func present(from viewController: UIViewController, with image: UIImage) {

        // TODO: Put activity view controller behind protocol so it can be injected in tests
        let activityViewController = UIActivityViewController(activityItems: [image],
                                                              applicationActivities: nil)
        viewController.present(activityViewController, animated: true, completion: nil)
    }
}
