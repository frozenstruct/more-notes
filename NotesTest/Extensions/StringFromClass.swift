//
//  StringFromClass.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 15.10.2022.
//

import Foundation

// MARK: - String From Class


/// Obtains string from type
/// - Parameter type: Object's metatype
/// - Returns: String from type
func getString<T>(from type: T.Type) -> String {
	return String(describing: type)
}
