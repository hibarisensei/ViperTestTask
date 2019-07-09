//
//  PostTableViewCell+DescriptionLabelLayout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addConstraintForDescriptionLabel() {
        let descriptionLabelTopConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                               attribute: .top,
                                                               relatedBy: .equal,
                                                               toItem: tittleLabel,
                                                               attribute: .bottom,
                                                               multiplier: 1.0,
                                                               constant: 10.0)
        
        let descriptionLabelLeftConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                                attribute: .left,
                                                                relatedBy: .equal,
                                                                toItem: thumbnailImageView,
                                                                attribute: .right,
                                                                multiplier: 1.0,
                                                                constant: 10.0)
        
        let descriptionLabelRightConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                                 attribute: .right,
                                                                 relatedBy: .equal,
                                                                 toItem: self,
                                                                 attribute: .right,
                                                                 multiplier: 1.0,
                                                                 constant: -10.0)
        
        let descriptionLabelBottomConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                                  attribute: .bottom,
                                                                  relatedBy: .equal,
                                                                  toItem: commentCountLabel,
                                                                  attribute: .top,
                                                                  multiplier: 1.0,
                                                                  constant: 10.0)
        
        let descriptionLabelCenterXConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                                   attribute: .centerY,
                                                                   relatedBy: .equal,
                                                                   toItem: thumbnailImageView,
                                                                   attribute: .centerY,
                                                                   multiplier: 1.0,
                                                                   constant: 0.0)
        
        self.addConstraints([descriptionLabelTopConstraint,
                             descriptionLabelRightConstraint,
                             descriptionLabelLeftConstraint,
                             descriptionLabelBottomConstraint,
                             descriptionLabelCenterXConstraint])
    }
}
