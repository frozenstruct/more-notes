//
//  List+CoreDataProperties.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//
//

import Foundation
import CoreData

extension List {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<List> {
        return NSFetchRequest<List>(entityName: "List")
    }

    @NSManaged public var name: String?
    @NSManaged public var noteRelationship: NSSet?

}

// MARK: Generated accessors for noteRelationship
extension List {

    @objc(addNoteRelationshipObject:)
    @NSManaged public func addToNoteRelationship(_ value: Note)

    @objc(removeNoteRelationshipObject:)
    @NSManaged public func removeFromNoteRelationship(_ value: Note)

    @objc(addNoteRelationship:)
    @NSManaged public func addToNoteRelationship(_ values: NSSet)

    @objc(removeNoteRelationship:)
    @NSManaged public func removeFromNoteRelationship(_ values: NSSet)

}

extension List: Identifiable {

}
