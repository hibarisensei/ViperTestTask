//
//  Post+CoreDataProperties.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import CoreData

extension Post {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Post> {
        return NSFetchRequest<Post>(entityName: "Post");
    }
    
    @NSManaged public var thumbImageUrl: String?
    @NSManaged public var imageUrl: String?
    @NSManaged public var title: String?
    @NSManaged public var id: Int32
    
}

