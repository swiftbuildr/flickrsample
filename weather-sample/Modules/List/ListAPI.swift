//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol GetAPI {
    associatedtype Data
    func get(_ completion: @escaping (Result<Data>) -> Void)
}

class ListAPI: GetAPI {

    let urlSession: URLSession

    init(urlSession: URLSession) {

        self.urlSession = urlSession
    }

    func get(_ completion: @escaping (Result<TopPosts>) -> Void) {

        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "list", ofType: "json")!)

        let task = urlSession.dataTask(with: url) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            let responseModel = try! jsonDecoder.decode(TopPosts.self, from: data!)

            completion(.success(responseModel))
        }

        task.resume()
    }
}
