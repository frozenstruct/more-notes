//
//  SceneDelegate.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 09.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene
	(_ scene: UIScene,
	 willConnectTo session: UISceneSession,
	 options connectionOptions: UIScene.ConnectionOptions
	) {
		guard let scene = (scene as? UIWindowScene)
		else { return }

		let viewController = NotesListModuleConfigurator().make(
			with: NotesListDependency(
				coreDataService: CoreDataService(),
				dataSource: NotesListViewDataSourceImp()
			)
		)

		let window = UIWindow(windowScene: scene)
		window.rootViewController = viewController
		window.tintColor = .black
		self.window = window
		window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }

}
