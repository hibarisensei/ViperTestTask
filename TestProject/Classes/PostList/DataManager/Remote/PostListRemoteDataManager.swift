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
    var valueOfAfterKey:String?
    
    func retrievePostList(valueOfAfterKey:String?) {
        let endPoint = RedditAPI.getPost(valueOfAfterKey: valueOfAfterKey)
        network.dataRequest(endPoint, objectType: DataModel.self) { [weak self] (result: Result<DataModel, NetworkError>) in
            guard let self = self else { return }
            switch result {
            case let .success(response):
                print("\(response)")
                DispatchQueue.main.async {
                    self.remoteRequestHandler?.onPostsRetrieved(response.posts, response.after)
                }
            case let .failure(error):
                print("\(error)")
                self.remoteRequestHandler?.onError()
            }
        }
    }
}
