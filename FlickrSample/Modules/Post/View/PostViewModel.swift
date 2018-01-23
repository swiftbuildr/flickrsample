//
//  PostViewModel.swift
//  weather-sample
//
//  Created by Samuel Ward on 20/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

struct PostViewModel {

    let title: String
    let rows: [Rowable]

    struct TitleRow: Rowable {
        let reuseIdentifier = TitleTableViewCell.reuseIdentifier
        let title: String
    }
    
    struct ImageRow: Rowable {
        let reuseIdentifier = ImageTableViewCell.reuseIdentifier
        let url: URL
    }

    struct AuthorRow: Rowable {
        let reuseIdentifier = AuthorTableViewCell.reuseIdentifier
        let text: String
        
        init(text: String) {
            
            self.text = "Author: " + text 
        }
    }
}
