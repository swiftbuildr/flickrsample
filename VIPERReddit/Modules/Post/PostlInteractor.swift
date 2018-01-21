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

    private let api: ListAPIInterface
    private let postId: String

    weak var output: PostInteractorOutput?

    init(api: ListAPIInterface, postId: String) {

        self.api = api
        self.postId = postId
    }

    func retrieveEntity() {

        _ = api.request() {
            result in

            switch result {
                case .success(let data):

                    guard let matchingPost = data.data.children.first(where: { $0.data.id == self.postId }) else { return }

                    let entity = PostEntity(title: matchingPost.data.title,
                                            author: matchingPost.data.author,
                                            url: matchingPost.data.url)

                    self.output?.finishedRetrieving(result: .success(entity))
                case .failure(let error):
                    self.output?.finishedRetrieving(result: .failure(error))
            }
        }
    }
}


