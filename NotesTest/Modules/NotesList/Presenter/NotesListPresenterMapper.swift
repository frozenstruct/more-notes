//
//  NotesListPresenterMapper.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//

// MARK: - NotesListPresenterMapper

final class NotesListPresenterMapper { }

// MARK: - Methods

extension NotesListPresenterMapper {

	func model(notes: [Note]) -> NotesListViewModel {
		NotesListViewModel(notes: notes)
	}
}

struct NotesListViewModel {

	var notes: [Note]
}
