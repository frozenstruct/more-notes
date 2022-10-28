//
//  UIFont+Fonts.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 25.10.2022.
//

import UIKit

// MARK: - App Fonts

extension UIFont {

    private enum Constants {

        static let headerFontSize: CGFloat = 36
        static let footerFontSize: CGFloat = 20
        static let defaultFontSize: CGFloat = 16

        static let sfProRegular: String = "SFPro-Regular"
        static let sfProBold: String = "SFPro-Bold"

    }

    static var header: UIFont {
        UIFont(
            name: Constants.sfProBold,
            size: Constants.headerFontSize
        ) ?? .systemFont(ofSize: Constants.defaultFontSize)
    }

    static var footer: UIFont {
        UIFont(
            name: Constants.sfProRegular,
            size: Constants.footerFontSize
        ) ?? .systemFont(ofSize: Constants.defaultFontSize)
    }
}
