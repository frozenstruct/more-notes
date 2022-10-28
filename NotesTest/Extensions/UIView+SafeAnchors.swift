//
//  UIView+SafeAnchors.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 01.07.2022.
//

import UIKit

// MARK: - Safe Anchors

extension UIView {

    /// `true` if device's screen size is relatively small (iPhone SE 1st Gen / iPod Touch 7th Gen)
    var isSmallScreen: Bool {
        return UIScreen.main.bounds.height <= 568
    }
}
