//
//  CoreDataService.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

import CoreData

// MARK: - CoreDataServiceInput

protocol CoreDataServiceInput: AnyObject {

	func save<T>(
		object: T?,
		in context: NSManagedObjectContext,
		completion: @escaping (T?, Error?) -> Void
	) where T: NSManagedObject

	func fetch<T>(
		with request: NSFetchRequest<T>,
		in context: NSManagedObjectContext,
		completion: @escaping ([T]?, Error?) -> Void
	) where T: NSManagedObject
}

// MARK: - CoreDataService

final class CoreDataService { }

// MARK: - <CoreDataServiceInput> Conformance

extension CoreDataService: CoreDataServiceInput {

	typealias StoreError = CoreDataError

	func save<T>(
		object: T?,
		in context: NSManagedObjectContext,
		completion: @escaping (T?, Error?) -> Void
	) where T: NSManagedObject {
		guard let object = object
		else {
			completion(nil, StoreError.nilNSManagedObject)
			return
		}

		do {
			try context.save()
			completion(object, nil)
		} catch let error as NSError {
			completion(nil, StoreError.contextSaveError(error.userInfo))
		}
	}

	func fetch<T>(
		with request: NSFetchRequest<T>,
		in context: NSManagedObjectContext,
		completion: @escaping ([T]?, Error?) -> Void
	) where T: NSManagedObject {
		do {
			let fetchedObjects = try context.fetch(request)
			completion(fetchedObjects, nil)
		} catch let error as NSError {
			completion(nil, StoreError.fetchError(error.userInfo))
		}
	}
}
