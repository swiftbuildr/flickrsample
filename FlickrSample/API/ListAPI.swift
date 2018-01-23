//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol ListAPIInterface {
    func request(_ completion: @escaping (Result<TopPosts>) -> Void)
}

class ListAPI: ListAPIInterface {
    
    private let urlSession: URLSession
    
    init(urlSession: URLSession) {
        
        self.urlSession = urlSession
    }
    
    func request(_ completion: @escaping (Result<TopPosts>) -> Void) {
        
        let liveURL = URL(string: "https://www.reddit.com/r/funny/hot.json")!
        //        let localURL = URL(fileURLWithPath: Bundle.main.path(forResource: "list", ofType: "json")!)
        
        let task = urlSession.dataTask(with: liveURL) { (data, response, error) in
            
            
            let jsonDecoder = JSONDecoder()
            do {
                let responseModel = try jsonDecoder.decode(TopPosts.self, from: data!)
                completion(.success(responseModel))
            } catch {
                completion(.failure(NSError(domain: "JSON Parsing failed", code: -1, userInfo: nil)))
            }
        }
        
        task.resume()
    }
}
