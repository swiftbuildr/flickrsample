//
//  TitleImageTableViewCell.swift
//  weather-sample
//
//  Created by Samuel Ward on 20/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class TitleImageTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet weak var headerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
