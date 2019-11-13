//
// Created by Krystian Duma on 13/11/2019.
// Copyright (c) 2019 Krystian Duma. All rights reserved.
//

import XCTest
@testable import HelloSwift

class FactorizationTests: XCTestCase {
    func testFactorsOf1() {
        XCTAssertNil(Factorization.factorize(1))
    }

    func testFactorsOf2() {
        XCTAssertEqual(Factorization.factorize(2), .prime)
    }

    func testFactorsOf4() {
        XCTAssertEqual(Factorization.factorize(4), .composite(factors: [2, 2]))
    }

    func testFactorsOf6() {
        XCTAssertEqual(Factorization.factorize(6), .composite(factors: [2, 3]))
    }

    func testFactorsOf8() {
        XCTAssertEqual(Factorization.factorize(8), .composite(factors: [2, 2, 2]))
    }

    func testFactorsOfBigNumber() {
        XCTAssertEqual(Factorization.factorize(2 * 2 * 5 * 11 * 13), .composite(factors: [2, 2, 5, 11, 13]))
    }

    func testFactorizationPerformance() {
        self.measure {
            for n in 0..<100 { _ = Factorization.factorize(n) }
        }
    }
}
