//
//  NotesListViewDataSource.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 23.06.2022.
//

import UIKit

// MARK: - NotesListViewDataSource

protocol NotesListViewDataSource: UITableViewDataSource {

    func set(notes: [Note])

    var notesPopulation: [Note] { get }
}

// MARK: - NotesListViewDataSourceImp

final class NotesListViewDataSourceImp: NSObject, NotesListViewDataSource {

    // MARK: Propeties

    private(set) var notesPopulation: [Note]

    // MARK: Initialization

    init(notes: [Note] = []) {
        notesPopulation = notes
        super.init()
    }

    func set(notes: [Note]) {
        self.notesPopulation = notes
    }
}

// MARK: - TableView DataSource

extension NotesListViewDataSourceImp: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        notesPopulation.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		Constants.rowHeight
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(
			withIdentifier: Constants.noteTableViewCell
		) as? NoteTableViewCell
		else {
			return UITableViewCell()
		}

		let currentNoteModel = notesPopulation[indexPath.row]
		cell.setup(with: currentNoteModel)

		return cell
    }
}

// MARK: - Constants

extension NotesListViewDataSourceImp {

	private enum Constants {
		static let noteTableViewCell = "NoteTableViewCell"
		static let rowHeight: CGFloat = 95
	}
}
