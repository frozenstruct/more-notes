//
//  Dependency.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//

import UIKit

// MARK: - NotesListDependency

protocol NotesListInput: AnyObject {

	var coreDataservice: CoreDataServiceInput { get }
	var notesStore: NotesStoreInput { get }
//	var listsStore: ListsStoreInput { get }
//	var notesMapper: NoteMapperInput { get }
	var dataSource: NotesListViewDataSource { get }
//	var alertFactory: AlertFactoryInput { get }
}

final class NotesListDependency: NotesListInput {

	private(set) var coreDataservice: CoreDataServiceInput
	private(set) var notesStore: NotesStoreInput
	private(set) var dataSource: NotesListViewDataSource

	init(
		coreDataService: CoreDataServiceInput,
		dataSource: NotesListViewDataSource
	) {
		self.coreDataservice = coreDataService
		self.notesStore = NoteStore(coreDataService: coreDataService)
		self.dataSource = dataSource
	}
}
