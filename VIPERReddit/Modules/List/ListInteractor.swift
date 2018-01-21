//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol ListInteractorInput {
    func getList()
}

protocol ListInteractorOutput: class {
    func didGetList(result: Result<ListEntity>)
}

class ListInteractor: ListInteractorInput {
    
    private let api: ListAPIInterface
    weak var output: ListInteractorOutput?
    
    init(api: ListAPIInterface) {
        
        self.api = api
    }
    
    func getList() {
        
        fetch { result in self.output?.didGetList(result: result) }
    }
    
    func fetch(completion: @escaping (Result<ListEntity>) -> Void) {
        
        _ = api.request() {
            result in
            
            switch result {
            case .success(let data):
                
                let children = data.data.children
                
                let listItems: [ListEntity.ListItem] = children.map {
                    
                    ListEntity.ListItem(id: $0.data.id,
                                        title: $0.data.title,
                                        descriptionText: $0.data.author,
                                        subreddit: $0.data.subreddit,
                                        url: $0.data.url)
                }
                
                let entity = ListEntity(listItems: listItems)
                completion(.success(entity))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

