//
//  Books+CoreDataProperties.swift
//  iOS Swift Assessment Core Data
//
//  Created by Flatiron School on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData
 

extension Books {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Books> {
        return NSFetchRequest<Books>(entityName: "Books");
    }

    @NSManaged public var name: String?
    @NSManaged public var author: Author?

}
