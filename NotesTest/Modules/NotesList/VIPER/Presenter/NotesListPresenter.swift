//
//  NotesListNotesListPresenter.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping. All rights reserved.
//

class NotesListPresenter {

	// MARK: Properties

    weak var view: NotesListViewControllerInput!
    var interactor: NotesListInteractorInput!
    var router: NotesListRouterInput!
	var mapper: NotesListPresenterMapper

	// MARK: Initialization

	init(mapper: NotesListPresenterMapper) {
		self.mapper = mapper
	}
}

// MARK: - NotesListViewOutput

extension NotesListPresenter: NotesListViewControllerOutput {

	func didLoad() {
		interactor.didLoad()
	}
}

// MARK: - NotesListModuleInput

extension NotesListPresenter: NotesListModuleInput {

}

// MARK: - NotesListInteractorOutput

extension NotesListPresenter: NotesListInteractorOutput {

	func didLoad(with model: NotesListPresenterModel) {
		view.didLoad(
			with: mapper.model(
				notes: model.notes
			)
		)
	}

	func update(with model: NotesListViewModel) {
		view.didLoad(with: model)
	}
}
