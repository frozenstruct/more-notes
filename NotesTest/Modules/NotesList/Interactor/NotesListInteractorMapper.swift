//
//  File.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//

import Foundation

// MARK: - NotesListInteractorMapper

final class NotesListInteractorMapper { }

// MARK: - Methods

extension NotesListInteractorMapper {

	func model(notes: [Note]) -> NotesListPresenterModel {
		NotesListPresenterModel(notes: notes)
	}
}

struct NotesListPresenterModel {

	var notes: [Note]
}
