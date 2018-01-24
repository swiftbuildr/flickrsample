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

    private let postEntity: PostEntity
    weak var output: PostInteractorOutput?

    init(postEntity: PostEntity) {

        self.postEntity = postEntity
    }

    func retrieveEntity() {

        self.output?.finishedRetrieving(result: .success(postEntity))
    }
}


