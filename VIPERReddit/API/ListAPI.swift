//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol RequestAPI {
    associatedtype RequestedObject
    func request(_ completion: @escaping (Result<RequestedObject>) -> Void)
}
//
//class AnyRequestAPI<RequestedObject>: RequestAPI {
//
//    private let requestMethod: (@escaping Completion) -> Void
//    typealias Completion = (Result<RequestedObject>) -> Void
//
//    init<T: RequestAPI>(requestAPI: T) where T.RequestedObject == RequestedObject {
//        self.requestMethod = requestAPI.request
//    }
//
//    func request(_ completion: @escaping (Result<RequestedObject>) -> Void) {
//
//        requestMethod(completion)
//    }
//}

protocol ListAPIInterface {
     func request(_ completion: @escaping (Result<TopPosts>) -> Void)
}

class ListAPI: RequestAPI {

    private let urlSession: URLSession

    init(urlSession: URLSession) {

        self.urlSession = urlSession
    }

    func request(_ completion: @escaping (Result<TopPosts>) -> Void) {

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
