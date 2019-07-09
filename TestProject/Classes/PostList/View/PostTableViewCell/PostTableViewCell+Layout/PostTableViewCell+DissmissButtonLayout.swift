//
//  PostTableViewCell+DissmissButtonLayout.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addConstraintForDissmissButton() {
        let dissmissButtonLeftConstraint = NSLayoutConstraint(item: dissmissButton,
                                                              attribute: .left,
                                                              relatedBy: .equal,
                                                              toItem: self,
                                                              attribute: .left,
                                                              multiplier: 1.0,
                                                              constant: 10.0)
        
        
        let dissmissButtonHightConstraint = NSLayoutConstraint(item: dissmissButton,
                                                               attribute: .height,
                                                               relatedBy: .equal,
                                                               toItem: nil,
                                                               attribute: .height,
                                                               multiplier: 1.0,
                                                               constant: 30.0)
        
        let dissmissButtonWidthConstraint = NSLayoutConstraint(item: dissmissButton,
                                                               attribute: .width,
                                                               relatedBy: .equal,
                                                               toItem: nil,
                                                               attribute: .width,
                                                               multiplier: 1.0,
                                                               constant: 70.0)
        
        let dissmissButtonBottomConstraint = NSLayoutConstraint(item: dissmissButton,
                                                                attribute: .bottom,
                                                                relatedBy: .equal,
                                                                toItem: self,
                                                                attribute: .bottom,
                                                                multiplier: 1.0,
                                                                constant: -10.0)
        
        self.addConstraints([dissmissButtonLeftConstraint,
                             dissmissButtonHightConstraint,
                             dissmissButtonWidthConstraint,
                             dissmissButtonBottomConstraint])        
    }
}
