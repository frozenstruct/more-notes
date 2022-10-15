//
//  UIApplication+Extensions.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

import UIKit
import CoreData

// MARK: - Managed Object Context

extension UIApplication {

    var managedContext: NSManagedObjectContext? {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate
        else {
            return nil
        }

        return delegate.persistentContainer.viewContext
    }
}
