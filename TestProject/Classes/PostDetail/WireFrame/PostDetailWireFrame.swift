//
//  PostDetailWireFrame.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostDetailWireFrame: PostDetailWireFrameProtocol {
    
    class func createPostDetailModule(forPost post: PostModel) -> UIViewController {
        let postDetailView = PostDetailView()
        let presenter: PostDetailPresenterProtocol = PostDetailPresenter()
        let wireFrame: PostDetailWireFrameProtocol = PostDetailWireFrame()
        
        postDetailView.presenter = presenter
        presenter.view = postDetailView
        presenter.post = post
        presenter.wireFrame = wireFrame
        
        return postDetailView
    }
}
