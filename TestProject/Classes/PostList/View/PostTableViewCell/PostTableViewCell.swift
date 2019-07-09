//
//  PostTableViewCell.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    static let cellId = "idPost"
   
    var tittleLabel:UILabel = UILabel()
    var dateLabel:UILabel = UILabel()
    var thumbnailImageView:UIImageView = UIImageView()
    var commentCountLabel:UILabel = UILabel()
    var descriptionLabel:UILabel = UILabel()
    var readStatus:UIView = UIView()
    var dissmissButton:UIButton = UIButton()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addAndSetupUIElemant()
        self.addLayoutConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(forPost post: PostModel) {
        self.selectionStyle = .none
        self.tittleLabel.text = post.title
        self.dateLabel.text = post.created.getDate().timeAgoSinceNow()
        self.thumbnailImageView.downloaded(from: post.thumbImageUrl)
        self.commentCountLabel.text = "\(post.numComments) comments"
    }
}
