//
//  SquareLigatureEraNameDecomposer.swift
//  SquareLigatureEraNameDecomposer
//
//  Created by treastrain on 2022/03/21.
//

import Foundation

/// A struct that decomposes square ligature era names in a string into base characters.
public struct SquareLigatureEraNameDecomposer {
    /// Returns a new string in which all occurrences of square ligature era names in a specified range of the receiver are decomposed by the base characters.
    /// - Parameters:
    ///   - string: The `String` object to decompose.
    ///   - options: A mask of options to use when comparing square ligature era names with the receiver. Pass empty array to specify no options.
    ///   - searchRange: The range in the receiver in which to search for square ligature era names.
    /// - Returns: A new string in which all occurrences of square ligature era names, matched using `options`, in `searchRange` of the receiver are replaced by replacement.
    static public func decompose(from string: String, options: String.CompareOptions = [], range searchRange: Range<String.Index>? = nil) -> String {
        var string = string
        SquareEraName.allCases.forEach {
            string = string.replacingOccurrences(of: $0.ligature, with: $0.decomposition, options: options, range: searchRange)
        }
        return string
    }
}
