//
// Created by Samuel Ward on 24/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

typealias ShareWireframeContext = (linkURL: URL, imageURL: UIImage)

protocol ShareWireframeInput {
    func present(from viewController: UIViewController,
                 with context: ShareWireframeContext)
}

class ShareWireframe: ShareWireframeInput {

    func present(from viewController: UIViewController, with context: ShareWireframeContext) {

        let activityViewController = UIActivityViewController(activityItems: ["Check this Flickr item out:", context.linkURL, context.imageURL],
                                                              applicationActivities: nil)
        viewController.present(activityViewController, animated: true, completion: nil)
    }
}
