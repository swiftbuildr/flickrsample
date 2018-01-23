//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

enum URLType {
    case image(URL)
    case website(URL)
    case none
    
    init(url: URL?) {
     
        if let url = url {
            
            if ["jpg", "jpeg", "png", "gif"].contains(url.pathExtension) {
                self = .image(url)
            } else {
                self = .website(url)
            }
        } else {
            self = .none
        }
    }
}
