//
//  UIView+SafeAnchors.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 01.07.2022.
//

import UIKit

// MARK: - Safe Anchors

extension UIView {

    var hasBottomInsets: Bool {
        if #available(iOS 11.0, *) {
            return safeAreaInsets.bottom > 0
        } else {
            return false
        }
    }

    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        } else {
            return topAnchor
        }
    }

    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        } else {
            return bottomAnchor
        }
    }

    var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.leadingAnchor
        } else {
            return leadingAnchor
        }
    }

    var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.trailingAnchor
        } else {
            return trailingAnchor
        }
    }

    var safeTopInset: CGFloat {
        if #available(iOS 11.0, *) {
            return safeAreaInsets.top
        } else {
            return 0
        }
    }

    var safeBottomInset: CGFloat {
        if #available(iOS 11.0, *) {
            return safeAreaInsets.bottom
        } else {
            return 0
        }
    }

    /// Centers view vertically between two provided anchors
    /// - Parameters:
    ///   - top: top anchor to center
    ///   - bottom: bottom anchor to center
    /// - Returns: constraint to activate to make view centred
    func centerVertically(between top: NSLayoutYAxisAnchor, and bottom: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        let view = UIView()

        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false

        view.topAnchor.constraint(equalTo: top).isActive = true
        view.bottomAnchor.constraint(equalTo: bottom).isActive = true

        return centerYAnchor.constraint(equalTo: view.centerYAnchor)
    }

    /// `true` if device's screen size is relatively small (iPhone SE 1st Gen / iPod Touch 7th Gen)
    var isSmallScreen: Bool {
        return UIScreen.main.bounds.height <= 568
    }
}
