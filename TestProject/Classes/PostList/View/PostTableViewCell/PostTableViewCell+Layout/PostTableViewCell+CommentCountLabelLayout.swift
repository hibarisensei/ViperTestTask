//
//  PostTableViewCell+CommentCountLabelLayout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addConstraintForCommentCountLabel() {
        let commentCountLabelTopConstraint = NSLayoutConstraint(item: commentCountLabel,
                                                                attribute: .top,
                                                                relatedBy: .equal,
                                                                toItem: thumbnailImageView,
                                                                attribute: .bottom,
                                                                multiplier: 1.0,
                                                                constant: 10.0)

        let commentCountLabelRightConstraint = NSLayoutConstraint(item: commentCountLabel,
                                                                  attribute: .right,
                                                                  relatedBy: .equal,
                                                                  toItem: self,
                                                                  attribute: .right,
                                                                  multiplier: 1.0,
                                                                  constant: -10.0)
        
        let commentCountLabelBottomConstraint = NSLayoutConstraint(item: commentCountLabel,
                                                                   attribute: .bottom,
                                                                   relatedBy: .equal,
                                                                   toItem: self,
                                                                   attribute: .bottom,
                                                                   multiplier: 1.0,
                                                                   constant: -10.0)
        
        let commentCountLabelHightConstraint = NSLayoutConstraint(item: commentCountLabel,
                                                                  attribute: .height,
                                                                  relatedBy: .equal,
                                                                  toItem: nil,
                                                                  attribute: .height,
                                                                  multiplier: 1.0,
                                                                  constant: 30.0)
        
        let commentCountLabelWidthConstraint = NSLayoutConstraint(item: commentCountLabel,
                                                                  attribute: .width,
                                                                  relatedBy: .equal,
                                                                  toItem: nil,
                                                                  attribute: .width,
                                                                  multiplier: 1.0,
                                                                  constant: 140.0)
        
        let commentCountLabelCenterXConstraint = NSLayoutConstraint(item: commentCountLabel,
                                                                    attribute: .centerY,
                                                                    relatedBy: .equal,
                                                                    toItem: dissmissButton,
                                                                    attribute: .centerY,
                                                                    multiplier: 1.0,
                                                                    constant: 0.0)
        
        self.addConstraints([commentCountLabelTopConstraint,
                             commentCountLabelRightConstraint,
                             commentCountLabelBottomConstraint,
                             commentCountLabelHightConstraint,
                             commentCountLabelWidthConstraint,
                             commentCountLabelCenterXConstraint])
    }
}
