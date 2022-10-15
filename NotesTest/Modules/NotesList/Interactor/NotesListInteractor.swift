//
//  NotesListNotesListInteractor.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping. All rights reserved.
//

// MARK: - NotesListInteractor

final class NotesListInteractor {

	weak var output: NotesListInteractorOutput!
	private var notesStore: NotesStoreInput
	private var mapper: NotesListInteractorMapper

	init(
		notesStore: NotesStoreInput,
		mapper: NotesListInteractorMapper
	) {
		self.notesStore = notesStore
		self.mapper = mapper
	}
}

// MARK: - NotesListInteractorInput

extension NotesListInteractor: NotesListInteractorInput {

	func didLoad() {
		notesStore.fetchNotes { notes in
			guard let notes = notes as? [Note] else { return }
			self.output.didLoad(
				with:
					self.mapper.model(notes: notes)
			)
		}
	}
}
