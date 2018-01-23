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
                    break
//                    self.output?.finishedRetrieving(result: .success(entity))
                case .failure(let error):
//                    self.output?.finishedRetrieving(result: .failure(error))
                    break
            }
        }
    }
}


