//
//  NotesListNotesListConfigurator.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping. All rights reserved.
//

import UIKit

// MARK: - NotesListModuleConfigurator

final class NotesListModuleConfigurator {

	/// Creates the module
	/// - Returns: Navigation controller with linked VIPER parts
	func make(with input: NotesListInput) -> UIViewController {
		let view = NotesListView(dataSource: input.dataSource)
		let viewController = NotesListViewController(view: view)
		let router = NotesListRouter()
		let presenter = NotesListPresenter(
			mapper: NotesListPresenterMapper()
		)
		let interactor = NotesListInteractor(
			notesStore:
				input.notesStore,
            mapper: NotesListInteractorMapper(colorMapper: NotesListColorMapper())
		)

		view.output = viewController
		presenter.view = viewController
		presenter.router = router
		presenter.interactor = interactor
		interactor.output = presenter
		viewController.output = presenter

		return UINavigationController(rootViewController: viewController)
	}
}
