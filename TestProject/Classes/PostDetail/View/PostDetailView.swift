//
//  PostDetailView.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostDetailView: UIViewController {
    
    var presenter: PostDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension PostDetailView: PostDetailViewProtocol {
    
    func showPostDetail(forPost post: PostModel) {
    }
}
