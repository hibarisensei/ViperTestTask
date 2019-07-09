//
//  PostModel.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

struct PostModel : Decodable {
    
    var id = ""
    var title = ""
    var thumbImageUrl = ""
    var numComments = 0
    var created = 0
    var author = ""
    
    enum PostsKeys: String, CodingKey {
        case id
        case title
        case thumbnail
        case numComments = "num_comments"
        case createdUTC = "created_utc"
        case author
    }

    enum CodingKeys: String, CodingKey {
        case data
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let dataValue = try container.nestedContainer(keyedBy: PostsKeys.self, forKey: .data)

        self.id = try dataValue.decode(String.self, forKey: .id)
        self.title = try dataValue.decode(String.self, forKey: .title)
        self.thumbImageUrl = try dataValue.decode(String.self, forKey: .thumbnail)
        self.numComments = try dataValue.decode(Int.self, forKey: .numComments)
        self.created = try dataValue.decode(Int.self, forKey: .createdUTC)
        self.author = try dataValue.decode(String.self, forKey: .author)
    }

    init(id: String, title: String, thumbImageUrl: String, numComments: Int, created: Int, author: String) {
        self.id = id
        self.title = title
        self.thumbImageUrl = thumbImageUrl
        self.numComments = numComments
        self.created = created
        self.author = author
    }
}

struct DataModel : Decodable {
    var posts:[PostModel] = []
    var after:String = ""
    
    enum CodingKeys: String, CodingKey {
        case data
    }
    
    enum DataKeys: String, CodingKey {
        case children
        case after
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let dataValue = try container.nestedContainer(keyedBy: DataKeys.self, forKey: .data)

        self.after = try dataValue.decode(String.self, forKey: .after)
        self.posts = try dataValue.decode([PostModel].self, forKey: .children)
    }
}


