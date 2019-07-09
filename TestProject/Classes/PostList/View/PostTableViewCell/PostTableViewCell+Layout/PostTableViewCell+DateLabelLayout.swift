//
//  PostTableViewCell+DateLabelLayout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addConstraintForDateLabel() {
        let dateLabelTopConstraint = NSLayoutConstraint(item: dateLabel,
                                                        attribute: .top,
                                                        relatedBy: .equal,
                                                        toItem: self,
                                                        attribute: .top,
                                                        multiplier: 1.0,
                                                        constant: 10.0)
        
        let dateLabelLeftConstraint = NSLayoutConstraint(item: dateLabel,
                                                         attribute: .left,
                                                         relatedBy: .equal,
                                                         toItem: tittleLabel,
                                                         attribute: .right,
                                                         multiplier: 1.0,
                                                         constant: 10.0)
        
        let dateLabelRightConstraint = NSLayoutConstraint(item: dateLabel,
                                                          attribute: .right,
                                                          relatedBy: .equal,
                                                          toItem: self,
                                                          attribute: .right,
                                                          multiplier: 1.0,
                                                          constant: -10.0)
        
        let dateLabelCenterXConstraint = NSLayoutConstraint(item: dateLabel,
                                                            attribute: .centerY,
                                                            relatedBy: .equal,
                                                            toItem: tittleLabel,
                                                            attribute: .centerY,
                                                            multiplier: 1.0,
                                                            constant: 0.0)
        
        self.addConstraints([dateLabelTopConstraint,
                             dateLabelLeftConstraint,
                             dateLabelRightConstraint,
                             dateLabelCenterXConstraint])

    }
}
