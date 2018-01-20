//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!

    var viewModel: ListViewModel.ListRow? {
        didSet {

            guard let viewModel = viewModel else { return }
            titleLabel.text = viewModel.title
            descriptionLabel.text = viewModel.detail
        }
    }
}
