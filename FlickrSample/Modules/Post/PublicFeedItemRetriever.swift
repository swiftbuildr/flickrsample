//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol PublicFeedItemRetriever{
    func retrieve(_ completion: @escaping (Result<PublicFeed.PublicFeedItem>) -> Void)
}

class InMemoryPublicFeedItemRetriever: PublicFeedItemRetriever {

    private let publicFeedItem: PublicFeed.PublicFeedItem

    init(publicFeedItem: PublicFeed.PublicFeedItem) {
        self.publicFeedItem = publicFeedItem
    }

    func retrieve(_ completion: @escaping (Result<PublicFeed.PublicFeedItem>) -> Void) {
        completion(.success(publicFeedItem))
    }
}
