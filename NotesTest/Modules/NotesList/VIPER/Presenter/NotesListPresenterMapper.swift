//
//  NotesListPresenterMapper.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//


import UIKit

// MARK: - NotesListPresenterMapper

final class NotesListPresenterMapper {

    // MARK: Subtypes

    typealias NoteModel = NotesListPresenterModel.Note
    typealias ViewModel = NotesListViewModel
}

// MARK: - Methods

extension NotesListPresenterMapper {

    func model(notes: [NoteModel]) -> NotesListViewModel {
        NotesListViewModel(
            cells: notes.map {
                let bgColorString = $0.backgroundColor.rawValue
                let ptrnColorString = "\($0.backgroundColor.rawValue)\($0.patternColor.rawValue)"

                return NotesListViewModel.Cell(
                    title: $0.title,
                    body: $0.body,
                    backgroundColor: UIColor(named: bgColorString) ?? .defaultColor,
                    patternColor: UIColor(named: ptrnColorString) ?? .defaultColor
                )
            }
        )
    }
}
