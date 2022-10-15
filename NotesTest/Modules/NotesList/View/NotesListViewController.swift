//
//  NotesListNotesListViewController.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping. All rights reserved.
//

import UIKit

// MARK: - NotesListViewController

class NotesListViewController: UIViewController {

	// MARK: UI Parts

	private var listView: NotesListViewInput

	// MARK: Properties

	var output: NotesListViewControllerOutput!

	// MARK: Initialization

	init(view: NotesListView) {
		self.listView = view
		super.init(nibName: nil, bundle: nil)
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: View Life cycle

	override func loadView() {
		guard let view = listView as? UIView
		else { return }
		self.view = view
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

// MARK: - NotesListViewInput

extension NotesListViewController: NotesListViewControllerInput {

	func didLoad(with model: NotesListViewModel) {
		listView.didLoad(with: model)
	}
}

extension NotesListViewController: NotesListViewOutput {

	func didLoad() {
		output.didLoad()
	}
}

// MARK: - Table View

extension NotesListViewController: UITableViewDelegate { }

extension NotesListViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		1
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		UITableViewCell()
	}
}
