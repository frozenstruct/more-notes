//
//  NotesListNotesListPresenter.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping Co.. All rights reserved.
//

class NotesListPresenter: NotesListModuleInput, NotesListViewOutput, NotesListInteractorOutput {

    weak var view: NotesListViewInput!
    var interactor: NotesListInteractorInput!
    var router: NotesListRouterInput!

    func viewIsReady() {

    }
}
