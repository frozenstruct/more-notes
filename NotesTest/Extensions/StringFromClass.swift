//
//  StringFromClass.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 15.10.2022.
//

import Foundation

func getString<T>(from type: T.Type) -> String {
	return String(describing: type)
}
