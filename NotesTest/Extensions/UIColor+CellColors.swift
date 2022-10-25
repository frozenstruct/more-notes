//
//  UIColor+CellColors.swift
//  NotesTest
//
//  Created by Dmitry Aksyonov on 24.10.2022.
//

import UIKit

// MARK: - NoteListCell Colors

extension UIColor {

    static var bark: UIColor     {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.6)
    }

    static var barkLI: UIColor   {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.4)
    }

    static var barkLR: UIColor   {
        UIColor(named: #function) ?? .black
    }

    static var leaf: UIColor     {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.6)
    }

    static var leafLI: UIColor   {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.4)
    }

    static var leafLR: UIColor   {
        UIColor(named: #function) ?? .black
    }

    static var skies: UIColor    {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.6)
    }

    static var skiesLI: UIColor  {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.4)
    }

    static var skiesLR: UIColor  {
        UIColor(named: #function) ?? .black
    }

    static var sun: UIColor      {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.6)
    }

    static var sunLI: UIColor    {
        UIColor(named: #function) ?? .black.withAlphaComponent(0.4)
    }

    static var sunLR: UIColor    {
        UIColor(named: #function) ?? .black
    }
}
