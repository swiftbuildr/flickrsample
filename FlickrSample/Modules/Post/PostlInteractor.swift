//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol PostInteractorInput {

    func retrieveEntity()
}

protocol PostInteractorOutput: class {
    func finishedRetrieving(result: Result<PostEntity>)
}

class PostInteractor: PostInteractorInput {

    private let api: PublicFeedAPI
    private let postId: String

    weak var output: PostInteractorOutput?

    init(api: PublicFeedAPI, postId: String) {

        self.api = api
        self.postId = postId
    }

    func retrieveEntity() {

        _ = api.makeRequest() {
            result in

            switch result {
                case .success(let data):

                    guard let item = data.items.first(where: { $0.author_id == self.postId })
                            else {
                        self.output?.finishedRetrieving(result: .failure(Errors.noMatchingItemFound))
                        return
                    }

                    let entity = PostEntity(author_id: item.author_id,
                                            title: item.title,
                                            url: item.link,
                                            mediaURL: item.media.m,
                                            descriptionText: item.description,
                                            author: item.author,
                                            dateTaken: item.date_taken,
                                            published: item.published)

                    self.output?.finishedRetrieving(result: .success(entity))
                case .failure(let error):
                    self.output?.finishedRetrieving(result: .failure(error))
                    break
            }
        }
    }
}


