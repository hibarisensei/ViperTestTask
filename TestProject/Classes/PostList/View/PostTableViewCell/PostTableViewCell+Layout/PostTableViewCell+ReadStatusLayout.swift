//
//  PostTableViewCell+ReadStatusLayout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {

    func addConstraintForReadStatus() {
        let readStatusTopConstraint = NSLayoutConstraint(item: readStatus,
                                                         attribute: .top,
                                                         relatedBy: .equal,
                                                         toItem: self,
                                                         attribute: .top,
                                                         multiplier: 1.0,
                                                         constant: 10.0)
        
        let readStatusLeftConstraint = NSLayoutConstraint(item: readStatus,
                                                          attribute: .left,
                                                          relatedBy: .equal,
                                                          toItem: self,
                                                          attribute: .left,
                                                          multiplier: 1.0,
                                                          constant: 10.0)
        
        let readStatusRightConstraint = NSLayoutConstraint(item: readStatus,
                                                           attribute: .right,
                                                           relatedBy: .equal,
                                                           toItem: tittleLabel,
                                                           attribute: .left,
                                                           multiplier: 1.0,
                                                           constant: -10.0)
        
        let readStatusHeightConstraint = NSLayoutConstraint(item: readStatus,
                                                            attribute: .height,
                                                            relatedBy: .equal,
                                                            toItem: nil,
                                                            attribute: .height,
                                                            multiplier: 1.0,
                                                            constant: 10.0)
        
        let readStatusWidthConstraint = NSLayoutConstraint(item: readStatus,
                                                           attribute: .width,
                                                           relatedBy: .equal,
                                                           toItem: nil,
                                                           attribute: .width,
                                                           multiplier: 1.0,
                                                           constant: 10.0)
        
        self.addConstraints([readStatusTopConstraint,
                             readStatusLeftConstraint,
                             readStatusRightConstraint,
                             readStatusHeightConstraint,
                             readStatusWidthConstraint])
    }
}
