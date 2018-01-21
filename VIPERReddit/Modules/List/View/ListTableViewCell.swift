//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var subredditLabel: UILabel!
    
    @IBOutlet var headerImageView: UIImageView! {
        didSet {
            headerImageView.kf.indicatorType = .activity
        }
    }

    var viewModel: ListViewModel.ListRow? {
        didSet {

            guard let viewModel = viewModel else { return }
            
            titleLabel.text = viewModel.title
            descriptionLabel.text = viewModel.detail
            subredditLabel.text = viewModel.subreddit
            
            if case .image(let url) = viewModel.urlType {
                headerImageView.kf.setImage(with: url)
                headerImageView.isHidden = false
            } else {
                headerImageView.isHidden = true
            }
            
            layoutIfNeeded()
        }
    }
}
