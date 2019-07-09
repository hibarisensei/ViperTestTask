//
//  PostListLocalDataManager.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import CoreData

class PostListLocalDataManager:PostListLocalDataManagerInputProtocol {
    
    func retrievePostList() throws -> [Post]  {
        
        guard let managedObjectContext = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        
        let request: NSFetchRequest<Post> = NSFetchRequest(entityName: String(describing: Post.self))
        
        return try managedObjectContext.fetch(request)
    }
    
    func savePost(id: String, title: String, thumbImageUrl: String, numComments: Int, created: Int, author: String) throws {
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        
        if let newPost = NSEntityDescription.entity(forEntityName: "Post", in: managedOC) {
            let post = Post(entity: newPost, insertInto: managedOC)
            post.id = id
            post.title = title
            post.thumbImageUrl = thumbImageUrl
            post.author = author
            post.numComments = Int32(numComments)
            post.created = Int32(created)
            try managedOC.save()
        }
        throw PersistenceError.couldNotSaveObject
        
    }
    
}
