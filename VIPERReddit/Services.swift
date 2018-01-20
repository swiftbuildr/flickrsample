//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class Services {

    static var urlSession: URLSession = URLSession.shared
    static var listAPI: ListAPI = ListAPI(urlSession: Services.urlSession)
}
