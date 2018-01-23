//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    @IBOutlet var headerImageView: UIImageView! {
        didSet {
            headerImageView.kf.indicatorType = .activity
        }
    }

    var viewModel: ListViewModel.ListRow? {
        didSet {

            guard let viewModel = viewModel else { return }
            
            titleLabel.text = viewModel.title
            authorLabel.text = viewModel.authorAndDate

            headerImageView.kf.setImage(with: viewModel.imageURL)
        }
    }
}
