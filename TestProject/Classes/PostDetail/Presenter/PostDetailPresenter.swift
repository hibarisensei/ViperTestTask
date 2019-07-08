//
//  PostDetailPresenter.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostDetailPresenter: PostDetailPresenterProtocol {
    
    weak var view: PostDetailViewProtocol?
    var wireFrame: PostDetailWireFrameProtocol?
    var post: PostModel?
    
    func viewDidLoad() {
        view?.showPostDetail(forPost: post!)
    }
}


