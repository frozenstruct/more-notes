//
//  Array+SafeIndex.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

// MARK: - Safe Index Access

extension Array {

    subscript(safe index: Int) -> Element? {
        guard indices.contains(index)
        else { return nil }
        return self[index]
    }
}
