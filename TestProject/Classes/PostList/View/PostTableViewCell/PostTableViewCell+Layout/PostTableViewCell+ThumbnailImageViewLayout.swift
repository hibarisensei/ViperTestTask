//
//  PostTableViewCell+ThumbnailImageViewLayout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addConstraintForThumbnailImageView() {
        let thumbnailImageViewLeftConstraint = NSLayoutConstraint(item: thumbnailImageView,
                                                                  attribute: .left,
                                                                  relatedBy: .equal,
                                                                  toItem: self,
                                                                  attribute: .left,
                                                                  multiplier: 1.0,
                                                                  constant: 10.0)
        
        let thumbnailImageVieweightConstraint = NSLayoutConstraint(item: thumbnailImageView,
                                                                   attribute: .height,
                                                                   relatedBy: .equal,
                                                                   toItem: nil,
                                                                   attribute: .height,
                                                                   multiplier: 1.0,
                                                                   constant: 90.0)
        
        let thumbnailImageViewWidthConstraint = NSLayoutConstraint(item: thumbnailImageView,
                                                                   attribute: .width,
                                                                   relatedBy: .equal,
                                                                   toItem: nil,
                                                                   attribute: .width,
                                                                   multiplier: 1.0,
                                                                   constant: 90.0)
        
        self.addConstraints([ thumbnailImageViewLeftConstraint,
                              thumbnailImageVieweightConstraint,
                              thumbnailImageViewWidthConstraint])

    }
}
