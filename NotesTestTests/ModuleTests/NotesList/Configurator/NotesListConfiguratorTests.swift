//
//  NotesListNotesListConfiguratorTests.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09/10/2022.
//  Copyright © 2022 Eyedropping. All rights reserved.
//

import XCTest

class NotesListModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    // swiftlint:disable force_cast
    func testConfigureModuleForViewController() {

        // given
        let viewController = NotesListViewControllerMock()
        let configurator = NotesListModuleConfigurator()

        // when
        configurator.configureModuleForViewInput(viewInput: viewController)

        // then
        XCTAssertNotNil(viewController.output, "NotesListViewController is nil after configuration")
        XCTAssertTrue(viewController.output is NotesListPresenter, "output is not NotesListPresenter")

        let presenter: NotesListPresenter = viewController.output as! NotesListPresenter
        XCTAssertNotNil(presenter.view, "view in NotesListPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in NotesListPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is NotesListRouter, "router is not NotesListRouter")

        let interactor: NotesListInteractor = presenter.interactor as! NotesListInteractor
        XCTAssertNotNil(interactor.output, "output in NotesListInteractor is nil after configuration")
    }

    class NotesListViewControllerMock: NotesListViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
