//
//  NotesListViewDataSource.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 23.06.2022.
//

import UIKit

// MARK: - NotesListViewDataSource

protocol NotesListViewDataSource: UITableViewDataSource {

	func set(notes: [NotesListViewModel.Cell])

	var notesPopulation: [NotesListViewModel.Cell] { get }
}

// MARK: - NotesListViewDataSourceImp

final class NotesListViewDataSourceImp: NSObject, NotesListViewDataSource {

    typealias Cell = NotesListViewModel.Cell

	// MARK: Propeties

	private(set) var notesPopulation: [Cell]

	// MARK: Initialization

    init(notes: [Cell] = []) {
		notesPopulation = notes
		super.init()
	}

	func set(notes: [Cell]) {
		self.notesPopulation = notes
	}
}

// MARK: - TableView DataSource

extension NotesListViewDataSourceImp: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		notesPopulation.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(
			withIdentifier: Constants.noteTableViewCell
		) as? NoteTableViewCell,
			  let currentNoteModel = notesPopulation[safe: indexPath.row]
		else {
			return UITableViewCell()
		}

		cell.render(with: currentNoteModel)
		return cell
	}
}

// MARK: - Constants

extension NotesListViewDataSourceImp {

	private enum Constants {
		static let noteTableViewCell = "NoteTableViewCell"
	}
}
