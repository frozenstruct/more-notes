//
//  UIColor+CellColors.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 24.10.2022.
//

import UIKit

// MARK: - DefaulyColor

extension UIColor {

    static var defaultColor: UIColor {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.6)
    }
}
