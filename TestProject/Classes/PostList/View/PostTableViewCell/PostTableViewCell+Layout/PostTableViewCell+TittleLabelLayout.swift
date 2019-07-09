//
//  PostTableViewCell+Layout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addConstraintForTittleLabel() {
        let tittleLabelTopConstraint = NSLayoutConstraint(item: tittleLabel,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: self,
                                                          attribute: .top,
                                                          multiplier: 1.0,
                                                          constant: 10.0)
        
        let ttittleLabelLeftConstraint = NSLayoutConstraint(item: tittleLabel,
                                                            attribute: .left,
                                                            relatedBy: .equal,
                                                            toItem: readStatus,
                                                            attribute: .right,
                                                            multiplier: 1.0,
                                                            constant: 10.0)
        
        let ttittleLabelRightConstraint = NSLayoutConstraint(item: tittleLabel,
                                                             attribute: .right,
                                                             relatedBy: .equal,
                                                             toItem: dateLabel,
                                                             attribute: .left,
                                                             multiplier: 1.0,
                                                             constant: 10.0)
        
        let ttittleLabelBottomConstraint = NSLayoutConstraint(item: tittleLabel,
                                                              attribute: .bottom,
                                                              relatedBy: .equal,
                                                              toItem: descriptionLabel,
                                                              attribute: .top,
                                                              multiplier: 1.0,
                                                              constant: -10.0)
        
        self.addConstraints([tittleLabelTopConstraint,
                             ttittleLabelLeftConstraint,
                             ttittleLabelRightConstraint,
                             ttittleLabelBottomConstraint])
    }
}
