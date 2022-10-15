//
//  CoreDataWorker.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

import UIKit
import CoreData

// MARK: - NoteStoreInput

protocol NotesStoreInput: AnyObject {

	func fetchNotes(
		completion: @escaping ([NSManagedObject]?) -> Void
	)

	//    func fetchNote(
	//        by name: String
	//    ) -> Note

	//    func createNote(
	//        model: NoteModel,
	//        completion: @escaping (NSManagedObject?, Error?) -> Void
	//    )

	//    @discardableResult
	//    func edit(
	//        note: Note,
	//        with model: NoteModel
	//    ) -> Note?
	//
	//    @discardableResult
	//    func delete(
	//        note: Note
	//    ) -> Note
	//
	//    var lists: [String]? { get }
}

// MARK: - NoteStore

final class NoteStore {

	// MARK: Properties

	private let coreDataService: CoreDataServiceInput

	var context: NSManagedObjectContext {
		UIApplication.shared.managedContext!
	}

	// MARK: Initialization

	init(coreDataService: CoreDataServiceInput) {
		self.coreDataService = coreDataService
	}
}

// MARK: - <NoteStoreInput> Conformance

extension NoteStore: NotesStoreInput {

	typealias StoreError = CoreDataError

	func fetchNotes(
		completion: @escaping ([NSManagedObject]?) -> Void
	) {
		guard let context = UIApplication.shared.managedContext
		else {
			completion(nil)
			return
		}

		coreDataService.fetch(
			with: Note.fetchRequest(),
			in: context,
			completion: { notes, _ in
				completion(notes)
			}
		)
	}

	//    func createNote(
	//        model: NoteModel,
	//        completion: @escaping (NSManagedObject?, Error?) -> Void
	//    ) {
	//        guard let context = UIApplication.shared.managedContext
	//        else {
	//            completion(nil, StoreError.couldNotLoadContext)
	//            return
	//        }
	//
	//        let note = Note(context: context).updated(from: model)
	//
	//        coreDataService.save(
	//            object: note,
	//            in: context,
	//            completion: { note, error in
	//                completion(note, error)
	//            }
	//        )
	//    }
}

// MARK: - Private Methods

extension NoteStore {

	private func fallbackFetch() -> [Note]? {
		[]
	}
}
