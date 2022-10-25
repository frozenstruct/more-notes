//
//  File.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//

import Foundation

// MARK: - NotesListInteractorMapper

final class NotesListInteractorMapper {

	typealias PresenterModel = NotesListPresenterModel
    typealias BackgroundColor = PresenterModel.Color
    typealias PatternColor = PresenterModel.PatternColor
	typealias NoteRenderConfiguration = PresenterModel.Note
}

// MARK: - Methods

extension NotesListInteractorMapper {
	
	func presenterModel(notes: [Note]) -> NotesListPresenterModel {
		PresenterModel(
			notes:
				notes.map {
					NoteRenderConfiguration(
                        title: $0.name ?? .emptyString,
                        body: $0.bodyText ?? .emptyString,
                        backgroundColor: BackgroundColor.allCases.randomElement()!,
                        patternColor: PatternColor.allCases.randomElement()!
                    )
				}
		)
	}
}
