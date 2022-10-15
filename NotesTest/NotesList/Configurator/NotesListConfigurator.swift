//
//  NotesListNotesListConfigurator.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping Co.. All rights reserved.
//

import UIKit

class NotesListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? NotesListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: NotesListViewController) {

        let router = NotesListRouter()

        let presenter = NotesListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = NotesListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
