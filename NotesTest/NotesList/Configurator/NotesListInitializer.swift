//
//  NotesListNotesListInitializer.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping Co.. All rights reserved.
//

import UIKit

class NotesListModuleInitializer: NSObject {

    // Connect with object on storyboard
    @IBOutlet weak var noteslistViewController: NotesListViewController!

    override func awakeFromNib() {

        let configurator = NotesListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: noteslistViewController)
    }

}
