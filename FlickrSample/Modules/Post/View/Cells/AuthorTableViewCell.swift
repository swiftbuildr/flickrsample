//
//  CommentsTableViewCell.swift
//  weather-sample
//
//  Created by Samuel Ward on 20/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class AuthorTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet var titleLabel: UILabel!

    var viewModel: PostViewModel.AuthorRow? {
        didSet {
            guard let viewModel = viewModel else { return }
            titleLabel.text = viewModel.text
        }
    }
}
