//
//  CommentsTableViewCell.swift
//  weather-sample
//
//  Created by Samuel Ward on 20/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class MetaDataTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet var descriptionTextLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var publishedLabel: UILabel!
    @IBOutlet var dateTakenLabel: UILabel!
    @IBOutlet var tagsLabel: UILabel!
    
    var viewModel: PostViewModel.MetaDataRow? {
        didSet {
            guard let viewModel = viewModel else { return }

            descriptionTextLabel.attributedText = viewModel.descriptionText
            authorLabel.text = viewModel.author
            publishedLabel.text = viewModel.published
            dateTakenLabel.text = viewModel.dateTaken
            tagsLabel.text = viewModel.tags
        }
    }
}
