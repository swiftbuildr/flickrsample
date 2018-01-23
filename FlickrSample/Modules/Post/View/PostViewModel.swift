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

    struct MetaDataRow: Rowable {
        let reuseIdentifier = MetaDataTableViewCell.reuseIdentifier

        let descriptionText: NSAttributedString
        let author: String
        let published: String
        let dateTaken: String
        let tags: String

        init(descriptionText: String,
             author: String,
             published: Date,
             dateTaken: Date,
             tags: String) {

            self.descriptionText = descriptionText.convertHtml()
            self.author = "Author: " + author

            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short

            self.published = "Published date: " + dateFormatter.string(from: published)
            self.dateTaken = "Date taken: " + dateFormatter.string(from: dateTaken)
            self.tags = tags
        }
    }
}

extension String{

    func convertHtml() -> NSAttributedString{
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do{
            return try NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
        }catch{
            return NSAttributedString()
        }
    }
}
