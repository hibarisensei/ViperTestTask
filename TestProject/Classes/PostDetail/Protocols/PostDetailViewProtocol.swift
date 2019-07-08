//
//  PostDetailViewProtocol.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

protocol PostDetailViewProtocol: class {
    var presenter: PostDetailPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showPostDetail(forPost post: PostModel)
}

protocol PostDetailWireFrameProtocol: class {
    static func createPostDetailModule(forPost post: PostModel) -> UIViewController
}

protocol PostDetailPresenterProtocol: class {
    var view: PostDetailViewProtocol? { get set }
    var wireFrame: PostDetailWireFrameProtocol? { get set }
    var post: PostModel? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
}

