//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell, NibReusable {
    
    @IBOutlet var titleLabel: UILabel!

    var viewModel: PostViewModel.TitleRow? {
        didSet {
            guard let viewModel = viewModel else { return }
            titleLabel.text = viewModel.title
        }
    }
}
