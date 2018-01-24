//
//  TitleImageTableViewCell.swift
//  weather-sample
//
//  Created by Samuel Ward on 20/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit
import Kingfisher

class ImageTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet var headerImageView: UIImageView! {
        didSet {
            headerImageView.kf.indicatorType = .activity
        }
    }

    var viewModel: PostViewModel.ImageRow? {
        didSet {
            guard let viewModel = viewModel else { return }
            
            headerImageView.kf.setImage(with: viewModel.url,
                                        placeholder: nil,
                                        options: nil,
                                        progressBlock: nil,
                                        completionHandler: { (image, error, cacheType, url) in
                                            viewModel.completion(image)
            })
        }
    }
}
