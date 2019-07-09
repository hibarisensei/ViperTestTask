//
//  PostTableViewCell+UIElemant.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension PostTableViewCell {
    
    func addAndSetupUIElemant() {
        self.addSubviewForPostTableViewCell()
        self.setAutoresizingMask()
        self.setupUIElemant()
        readStatus.backgroundColor = UIColor.blue
    }
    
    func addSubviewForPostTableViewCell() {
        addSubview(readStatus)
        addSubview(thumbnailImageView)
        addSubview(commentCountLabel)
        addSubview(dateLabel)
        addSubview(authorLabel)
        addSubview(tittleLabel)
        addSubview(dissmissButton)
        addSubview(descriptionLabel)
    }
    
    func setAutoresizingMask() {
        readStatus.translatesAutoresizingMaskIntoConstraints = false
        thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false
        commentCountLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        tittleLabel.translatesAutoresizingMaskIntoConstraints = false
        dissmissButton.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupUIElemant() {
        descriptionLabel.numberOfLines = 0
        tittleLabel.numberOfLines = 0
        tittleLabel.lineBreakMode = .byWordWrapping
        dateLabel.textAlignment = .right
        commentCountLabel.textAlignment = .right
        dissmissButton.setTitle("Dismiss post", for: .normal)
    }
}
