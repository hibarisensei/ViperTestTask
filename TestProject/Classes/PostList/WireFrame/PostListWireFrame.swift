//
//  PostListWireFrame.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostListWireFrame: PostListWireFrameProtocol {
    
    class func createPostListModule() -> UIViewController {
        let postListView = PostListView()
        let presenter: PostListPresenterProtocol & PostListInteractorOutputProtocol = PostListPresenter()
        let interactor: PostListInteractorInputProtocol & PostListRemoteDataManagerOutputProtocol & TableviewPaginatorProtocol = PostListInteractor()
        let localDataManager: PostListLocalDataManagerInputProtocol = PostListLocalDataManager()
        let remoteDataManager: PostListRemoteDataManagerInputProtocol = PostListRemoteDataManager()
        let wireFrame: PostListWireFrameProtocol = PostListWireFrame()
        let tableviewPaginator: TableviewPaginator = TableviewPaginator.init(paginatorUI: postListView, delegate: interactor)
        
        postListView.presenter = presenter
        presenter.view = postListView
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        presenter.tableviewPaginator = tableviewPaginator
        interactor.presenter = presenter
        interactor.localDatamanager = localDataManager
        interactor.remoteDatamanager = remoteDataManager
        remoteDataManager.remoteRequestHandler = interactor
        
        return postListView
    }
    
    func presentPostDetailScreen(from view: PostListViewProtocol, forPost post: PostModel) {
        let postDetailViewController = PostDetailWireFrame.createPostDetailModule(forPost: post)
        
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(postDetailViewController, animated: true)
        }
    }
    
}

