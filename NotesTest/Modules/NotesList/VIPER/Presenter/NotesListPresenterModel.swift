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
        let backgroundColor: Color
        let patternColor: PatternColor
    }

    // MARK: ColorType

    /// Sets note cell background color alongside with pattern color
    enum Color: String, CaseIterable {

        case skies
        case leaf
        case sun
        case bark
    }

    // MARK: PatternColorType

    /// Sets color of the fancy background pattern
    enum PatternColor: String, CaseIterable {

        case LI, LR
    }
}
