//
//  NotesListColorMapper.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 26.10.2022.
//

final class NotesListColorMapper {

    typealias Color = NotesListPresenterModel.Color

    var previousColor: NotesListPresenterModel.Color?

    var randomColor: NotesListPresenterModel.Color {
        var randomColor = Color.allCases.randomElement()

        while randomColor == previousColor {
            randomColor = Color.allCases.randomElement()
        }

        previousColor = randomColor

        if let color = randomColor { return color } else { return .sun }
    }
}
