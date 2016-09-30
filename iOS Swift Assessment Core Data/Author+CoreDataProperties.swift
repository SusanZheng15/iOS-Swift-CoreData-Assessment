//
//  Author+CoreDataProperties.swift
//  iOS Swift Assessment Core Data
//
//  Created by Flatiron School on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData
 

extension Author {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Author> {
        return NSFetchRequest<Author>(entityName: "Author");
    }

    @NSManaged public var name: String?
    @NSManaged public var books: Set<Books>

}

// MARK: Generated accessors for books
extension Author {

    @objc(addBooksObject:)
    @NSManaged public func addToBooks(_ value: Books)

    @objc(removeBooksObject:)
    @NSManaged public func removeFromBooks(_ value: Books)

    @objc(addBooks:)
    @NSManaged public func addToBooks(_ values: NSSet)

    @objc(removeBooks:)
    @NSManaged public func removeFromBooks(_ values: NSSet)

}
