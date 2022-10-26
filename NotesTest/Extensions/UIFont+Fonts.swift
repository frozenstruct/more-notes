//
//  UIFont+Fonts.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 25.10.2022.
//

import UIKit

extension UIFont {

    private enum Constants {

        static let headerFontSize: CGFloat = 36
        static let footerFontSize: CGFloat = 20
        static let defaultFontSize: CGFloat = 16

        static let sfProRegular: String = "SFPro-Regular"
        static let sfProUltralight: String = "SFPro-Ultralight"
        static let sfProThin: String = "SFPro-Thin"
        static let sfProLight: String = "SFPro-Light"
        static let sfProMedium: String = "SFPro-Medium"
        static let sfProSemibold: String = "SFPro-Semibold"
        static let sfProBold: String = "SFPro-Bold"
        static let sfProHeavy: String = "SFPro-Heavy"
        static let sfProBlack: String = "SFPro-Black"
        static let sfProCondensedRegular: String = "SFPro-CondensedRegular"
        static let sfProCondensedUltralight: String = "SFPro-CondensedUltralight"
        static let sfProCondensedThin: String = "SFPro-CondensedThin"
        static let sfProCondensedLight: String = "SFPro-CondensedLight"
        static let sfProCondensedMedium: String = "SFPro-CondensedMedium"
        static let sfProCondensedSemibold: String = "SFPro-CondensedSemibold"
        static let sfProCondensedBold: String = "SFPro-CondensedBold"
        static let sfProCondensedHeavy: String = "SFPro-CondensedHeavy"
        static let sfProCondensedBlack: String = "SFPro-CondensedBlack"
        static let sfProExpandedRegular: String = "SFPro-ExpandedRegular"
        static let sfProExpandedUltralight: String = "SFPro-ExpandedUltralight"
        static let sfProExpandedThin: String = "SFPro-ExpandedThin"
        static let sfProExpandedLight: String = "SFPro-ExpandedLight"
        static let sfProExpandedMedium: String = "SFPro-ExpandedMedium"
        static let sfProExpandedSemibold: String = "SFPro-ExpandedSemibold"
        static let sfProExpandedBold: String = "SFPro-ExpandedBold"
        static let sfProExpandedHeavy: String = "SFPro-ExpandedHeavy"
        static let sfProExpandedBlack: String = "SFPro-ExpandedBlack"
        static let sfProCompressedRegular: String = "SFPro-CompressedRegular"
        static let sfProCompressedUltralight: String = "SFPro-CompressedUltralight"
        static let sfProCompressedThin: String = "SFPro-CompressedThin"
        static let sfProCompressedLight: String = "SFPro-CompressedLight"
        static let sfProCompressedMedium: String = "SFPro-CompressedMedium"
        static let sfProCompressedSemibold: String = "SFPro-CompressedSemibold"
        static let sfProCompressedBold: String = "SFPro-CompressedBold"
        static let sfProCompressedHeavy: String = "SFPro-CompressedHeavy"
        static let sfProCompressedBlack: String = "SFPro-CompressedBlack"
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
