//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol GetAPI {
    associatedtype Data
    func get(_ completion: @escaping (Result<Data>) -> Void)
}

//class AnyAPI<T>: GetAPI {
//
//    private let getAPI: GetAPI<T>
//
//    init<U: GetAPI>(getAPI: GetAPI<T> where U.CacheType == T) {
//        self.getAPI = getAPI
//    }
//
//    func get(_ completion: @escaping (Result<AnyAPI<Data>.Data>) -> Void) {
//        getAPI.get(completion)
//    }
//}

class ListAPI: GetAPI {

    let urlSession: URLSession

    init(urlSession: URLSession) {

        self.urlSession = urlSession
    }

    func get(_ completion: @escaping (Result<TopPosts>) -> Void) {

        let liveURL = URL(string: "https://www.reddit.com/r/adviceanimals/hot.json")!
//        let localURL = URL(fileURLWithPath: Bundle.main.path(forResource: "list", ofType: "json")!)

        let task = urlSession.dataTask(with: liveURL) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            let responseModel = try! jsonDecoder.decode(TopPosts.self, from: data!)

            completion(.success(responseModel))
        }

        task.resume()
    }
}
