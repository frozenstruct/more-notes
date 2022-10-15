//
//  Note+CoreDataProperties.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//
//

import Foundation
import CoreData

extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var name: String?
    @NSManaged public var bodyText: String?
    @NSManaged public var date: Date?
    @NSManaged public var list: NSObject?
    @NSManaged public var listRelationship: List?

}

extension Note: Identifiable {

}
