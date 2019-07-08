//
//  PostListView.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class PostListView: UIViewController {
    
    weak var tableView: UITableView!
   
    var presenter: PostListPresenterProtocol?
    var postList: [PostModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
}

extension PostListView: PostListViewProtocol {
    
    func showPosts(with posts: [PostModel]) {
        postList = posts
        tableView.reloadData()
    }
    
    func showError() {
    }
    
    func showLoading() {
    }
    
    func hideLoading() {
    }
}

extension PostListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell
        
        let post = postList[indexPath.row]
        cell.set(forPost: post)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showPostDetail(forPost: postList[indexPath.row])
    }
}
