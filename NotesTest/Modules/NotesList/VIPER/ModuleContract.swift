//
//  ModuleContract.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 10.10.2022.
//

// MARK: - Module

protocol NotesListModuleInput: AnyObject { }
protocol NotesListModuleOutput: AnyObject { }

// MARK: - Routing

protocol NotesListRouterInput: AnyObject { }

// MARK: - View

protocol NotesListViewInput: AnyObject {

	func didLoad(with model: NotesListViewModel)
}

protocol NotesListViewOutput {

	func didLoad()
}

// MARK: - View Controller

protocol NotesListViewControllerInput: AnyObject {

	func didLoad(with model: NotesListViewModel)
}

protocol NotesListViewControllerOutput: AnyObject {

	func didLoad()
}

// MARK: - Interactor

protocol NotesListInteractorInput {

	func didLoad()
}

protocol NotesListInteractorOutput: AnyObject {

	func didLoad(with model: NotesListPresenterModel)
}
