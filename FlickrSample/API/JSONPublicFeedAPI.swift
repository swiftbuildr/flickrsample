//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class JSONPublicFeedAPI: PublicFeedAPI {

    private let urlSession: URLSession
    
    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }()

    init(urlSession: URLSession) {

        self.urlSession = urlSession
    }

    func makeRequest(_ completion: @escaping (Result<PublicFeed>) -> Void) {

        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .formatted(self.dateFormatter)

        let liveURL = URL(string: "https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1")!
        //        let localURL = URL(fileURLWithPath: Bundle.main.path(forResource: "list", ofType: "json")!)

        let task = urlSession.dataTask(with: liveURL) { data, response, error in

            guard let data = data else {
                completion(.failure(Errors.noData))
                return
            }
        
            do {
                let responseModel = try jsonDecoder.decode(PublicFeed.self, from: data)
                completion(.success(responseModel))
            } catch {
                completion(.failure(Errors.jsonParsingFailed))
            }
        }

        task.resume()
    }
}
