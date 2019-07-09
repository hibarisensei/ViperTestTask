//
//  PostTableViewCell+Layout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addLayoutConstraint() {
        self.addConstraintForReadStatus()
        self.addConstraintForTittleLabel()
        self.addConstraintForDateLabel()
        self.addConstraintForThumbnailImageView()
        self.addConstraintForDissmissButton()
        self.addConstraintForDescriptionLabel()
        self.addConstraintForCommentCountLabel()
    }
}
