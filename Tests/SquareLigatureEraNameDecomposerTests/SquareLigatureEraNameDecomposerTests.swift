//
//  SquareLigatureEraNameDecomposerTests.swift
//  SquareLigatureEraNameDecomposerTests
//
//  Created by treastrain on 2022/03/21.
//

import XCTest
@testable import SquareLigatureEraNameDecomposer

final class SquareLigatureEraNameDecomposerTests: XCTestCase {
    func testReiwa() throws {
        let expected = "令和"
        let actual = SquareLigatureEraNameDecomposer.decompose(from: "㋿")
        XCTAssertEqual(actual, expected)
    }
    
    func testHeisei() throws {
        let expected = "平成"
        let actual = SquareLigatureEraNameDecomposer.decompose(from: "㍻")
        XCTAssertEqual(actual, expected)
    }
    
    func testShowa() throws {
        let expected = "昭和"
        let actual = SquareLigatureEraNameDecomposer.decompose(from: "㍼")
        XCTAssertEqual(actual, expected)
    }
    
    func testTaisho() throws {
        let expected = "大正"
        let actual = SquareLigatureEraNameDecomposer.decompose(from: "㍽")
        XCTAssertEqual(actual, expected)
    }
    
    func testMeiji() throws {
        let expected = "明治"
        let actual = SquareLigatureEraNameDecomposer.decompose(from: "㍾")
        XCTAssertEqual(actual, expected)
    }
    
    func testExample1() throws {
        let expected = """
        明治45年は1912年です。
        大正15年は1926年です。
        昭和64年は1989年です。
        平成31年は2019年です。
        令和4年は2022年です。
        """
        let actual = SquareLigatureEraNameDecomposer.decompose(from: """
        ㍾45年は1912年です。
        ㍽15年は1926年です。
        ㍼64年は1989年です。
        ㍻31年は2019年です。
        ㋿4年は2022年です。
        """)
        XCTAssertEqual(actual, expected)
    }
}
