//
//  PostModel.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

struct PostModel : Decodable{
    var id = 0
    var title = ""
    var imageUrl = ""
    var thumbImageUrl = ""
    
    enum CodingKeys: String, CodingKey {
        case photos
    }
    
    // The keys inside of the "FlickrPhotosKeys" object
    enum PostsKeys: String, CodingKey {
        case id
        case title
        case imageUrl
        case thumbImageUrl
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let photos = try values.nestedContainer(keyedBy: PostsKeys.self, forKey: .photos)
        
        self.id = try photos.decode(Int.self, forKey: .id)
        self.title = try photos.decode(String.self, forKey: .title)
        self.imageUrl = try photos.decode(String.self, forKey: .imageUrl)
        self.thumbImageUrl = try photos.decode(String.self, forKey: .thumbImageUrl)
    }

    init(id:Int, title:String, imageUrl:String, thumbImageUrl:String) {
        self.id = id
        self.title = title
        self.imageUrl = imageUrl
        self.thumbImageUrl = thumbImageUrl
    }
}
