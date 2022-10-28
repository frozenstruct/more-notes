//
//  NoteListViewModel.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 28.10.2022.
//

import UIKit

// MARK: - NotesListViewModel

struct NotesListViewModel {

    let cells: [Cell]

}

// MARK:  -Cells

extension NotesListViewModel {

    struct Cell {

        let title: String
        let body: String
        let backgroundColor: UIColor
        let patternColor: UIColor
    }
}
