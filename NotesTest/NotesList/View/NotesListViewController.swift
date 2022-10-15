//
//  NotesListNotesListViewController.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping Co.. All rights reserved.
//

import UIKit

class NotesListViewController: UIViewController, NotesListViewInput {

    var output: NotesListViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: NotesListViewInput
    func setupInitialState() {
    }
}
