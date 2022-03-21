//
//  SquareEraName.swift
//  SquareLigatureEraNameDecomposer
//
//  Created by treastrain on 2022/03/21.
//

import Foundation

/// Square era names in Unicode and their UTF-16 encoding.
public enum SquareEraName: UInt16, CaseIterable {
    /// SQUARE ERA NAME REIWA (令和, れいわ, Reiwa).
    case reiwa = 0x32FF
    /// SQUARE ERA NAME HEISEI (平成, へいせい, Heisei).
    case heisei = 0x337B
    /// SQUARE ERA NAME SYOUWA (昭和, しょうわ, Showa, Syouwa).
    case syouwa = 0x337C
    /// SQUARE ERA NAME TAISYOU (大正, たいしょう, Taisho, Taisyou).
    case taisyou = 0x337D
    /// SQUARE ERA NAME MEIZI (明治, めいじ, Meiji, Meizi).
    case meizi = 0x337E
    
    /// Ligature of square era name.
    public var ligature: String {
        switch self {
        case .reiwa:
            return "㋿"
        case .heisei:
            return "㍻"
        case .syouwa:
            return "㍼"
        case .taisyou:
            return "㍽"
        case .meizi:
            return "㍾"
        }
    }
    
    /// Decomposition of square era name.
    public var decomposition: String {
        switch self {
        case .reiwa:
            return "令和"
        case .heisei:
            return "平成"
        case .syouwa:
            return "昭和"
        case .taisyou:
            return "大正"
        case .meizi:
            return "明治"
        }
    }
}
