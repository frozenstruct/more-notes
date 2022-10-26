//
//  NotesTableView.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 23.06.2022.
//

import UIKit

// MARK: - NotesListView

final class NotesListView: UIView {

	// MARK: Properties

	var output: NotesListViewOutput?
	private(set) weak var tableViewDelegate: UITableViewDelegate?
	private(set) var tableViewDataSource: NotesListViewDataSource?
	private lazy var notesListTableView: UITableView = {
		let tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.delegate = tableViewDelegate
		tableView.dataSource = tableViewDataSource
		tableView.separatorStyle = .none
		tableView.register(
			NoteTableViewCell.self,
			forCellReuseIdentifier: getString(from: NoteTableViewCell.self)
		)
		tableView.rowHeight = Constants.rowHeight
		tableView.estimatedRowHeight = Constants.rowHeight
		return tableView
	}()

	// MARK: Initialization

	init(
		dataSource: NotesListViewDataSource
	) {
		tableViewDataSource = dataSource
		super.init(frame: .zero)
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: View Life Cycle

	override func layoutSubviews() {
		addSubviews()
		constrainSubviews()
		output?.didLoad()
	}
}

// MARK: - Methods

extension NotesListView {

	private func addSubviews() {
		addSubview(notesListTableView)
	}

	private func constrainSubviews() {
		NSLayoutConstraint.activate([
			notesListTableView.topAnchor.constraint(equalTo: topAnchor),
			notesListTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
			notesListTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
			notesListTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
		])
	}
}

// MARK: - NotesListViewInput

extension NotesListView: NotesListViewInput {

	func didLoad(with model: NotesListViewModel) {
		tableViewDataSource?.set(notes: model.cells)
	}
}

// MARK: - Constants

extension NotesListView {

	private enum Constants {
		static let rowHeight: CGFloat = 200
	}
}
