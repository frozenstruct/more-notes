//
//  StoreError.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

import Foundation

// MARK: - StoresError

typealias UserInfo = [String: Any]

enum CoreDataError: Error {

    case couldNotLoadContext

    case nilNSManagedObject

    case creationError(_ extraData: UserInfo = [:])
    case editingError(_ extraData: UserInfo = [:])
    case fetchError(_ extraData: UserInfo = [:])
    case deletingError(_ extraData: UserInfo = [:])

    case contextSaveError(_ extraData: UserInfo = [:])
}
