//
//  PostListRemoteDataManager.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostListRemoteDataManager:PostListRemoteDataManagerInputProtocol {    
    
    let network: NetworkService = NetworkAPIClient()
    var remoteRequestHandler: PostListRemoteDataManagerOutputProtocol?
    
    func retrievePostList(valueOfAfterKey:String?) {
        let endPoint = RedditAPI.getPost(valueOfAfterKey: valueOfAfterKey)
        network.dataRequest(endPoint, objectType: PostModel.self) { [weak self] (result: Result<PostModel, NetworkError>) in
            guard let self = self else { return }
            switch result {
            case let .success(response):
                self.remoteRequestHandler?.onPostsRetrieved([response])
            case .failure(_):
                self.remoteRequestHandler?.onError()
            }
        }
    }
    
}
