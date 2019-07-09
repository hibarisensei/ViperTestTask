//
//  PostListInteractor.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostListInteractor: PostListInteractorInputProtocol {
    weak var presenter: PostListInteractorOutputProtocol?
    var localDatamanager: PostListLocalDataManagerInputProtocol?
    var remoteDatamanager: PostListRemoteDataManagerInputProtocol?
    
    func retrievePostList() {
        do {
            if let postList = try localDatamanager?.retrievePostList() {
                let postModelList = postList.map() {
                    return PostModel(id: $0.id!, title: $0.title!, thumbImageUrl: $0.thumbImageUrl!, numComments: Int($0.numComments), created: Int($0.created), author:  $0.author!)

                }
                if  postModelList.isEmpty {
                    remoteDatamanager?.retrievePostList(valueOfAfterKey: nil)
                }else{
                    presenter?.didRetrievePosts(postModelList)
                }
            } else {
                remoteDatamanager?.retrievePostList(valueOfAfterKey: nil)
            }
            
        } catch {
            presenter?.didRetrievePosts([])
        }
    }
    
}

extension PostListInteractor: PostListRemoteDataManagerOutputProtocol {
    
    func onPostsRetrieved(_ posts: [PostModel]) {
        presenter?.didRetrievePosts(posts)
        
        for postModel in posts {
            do {
                try localDatamanager?.savePost(id: postModel.id,
                                               title: postModel.title,
                                               thumbImageUrl: postModel.thumbImageUrl,
                                               numComments: postModel.numComments,
                                               created: postModel.created,
                                               author: postModel.author)
            } catch  {
                
            }
        }
    }
    
    func onError() {
        presenter?.onError()
    }
    
}
