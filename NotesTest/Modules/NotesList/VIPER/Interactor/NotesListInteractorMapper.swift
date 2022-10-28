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
	typealias NoteRenderConfiguration = PresenterModel.Note

    private let colorMapper: NotesListColorMapper

    init(colorMapper: NotesListColorMapper) {
        self.colorMapper = colorMapper
    }
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
                        backgroundColor: colorMapper.randomColor,
                        patternColor: .LI
                    )
				}
		)
	}
}
