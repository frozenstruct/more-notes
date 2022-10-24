//
//  NotesListPresenterModel.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 23.10.2022.
//

// MARK: - NotesListPresenterModel

struct NotesListPresenterModel {
	let notes: [Self.Note]
}

// MARK: - NotePresentationConfiguration

extension NotesListPresenterModel {

	// MARK: Config

	/// Declares how the note will be rendered
	struct Note {
		let title: String
		let body: String
		let noteColors: Color
	}

	// MARK: ColorType

	/// Sets note cell background color alongside with pattern color
	enum Color {
		case skies(PatternColor)
		case leaf(PatternColor)
		case sun(PatternColor)
		case bark(PatternColor)
	}

	// MARK: PatternColorType

	/// Sets color of the fancy background pattern
	enum PatternColor {
		case lightIncreased, lightReduced
	}
}
