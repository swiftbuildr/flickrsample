//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

struct Examples {

    struct Constants {

        static let title = "You can never cross the ocean unless you have the courage to lose sight of the shore. #funguidexp #girl #boys #iphonesia #igdaily #picoftheday #beautiful #men #instagramhub #guys #summer #love #instadaily #instagood #cute #tweegram #me #igers #love #hot #"
        static let link = URL(string: "http://www.google.com")!
        static let imageURL = URL(string: "http://www.google.com/logo.jpg")!
        static let media = PublicFeed.PublicFeedItem.Media(m: imageURL)
        static let date_taken = Date()
        static let description = "description"
        static let published = Date()
        static let author = "nobody@flickr.com (\"guidexp\")"
        static let author_id = "158118324@N07"
        static let tags = "instagram"
    }

    struct List {

        static let listEntity = ListEntity(title: "", listItems: [listItem])

        static let listItem = ListEntity.ListItem(author_id: "", title: "", imageURL: URL(string: "http://www.google.com")!, descriptionText: "", author: "", dateTaken: Date())
    }

    struct API {

        static let publicFeed = PublicFeed(title: "title",
                                           link: Constants.link,
                                           items: [API.publicFeedItem])

        static let publicFeedItem = PublicFeed.PublicFeedItem(title: "",
                                                              link: Constants.link,
                                                              media: Constants.media,
                                                              date_taken: Constants.date_taken,
                                                              description: Constants.description,
                                                              published: Constants.published,
                                                              author: Constants.author,
                                                              author_id: Constants.author_id,
                                                              tags: Constants.tags)
    }


    static let error = NSError(domain: "", code: 9, userInfo: nil)
}
