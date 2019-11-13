//
//  Factorization.swift
//  HelloSwift
//
//  Created by Krystian Duma on 13/11/2019.
//  Copyright © 2019 Krystian Duma. All rights reserved.
//

import Foundation


class Factorization {
    enum Result: Equatable {
        case prime
        case composite(factors: [Int])
    }

    static func factorize (_ number: Int) -> Result? {
        var number = number
        var factors: [Int] = []

        var divisor = 2
        while divisor * divisor <= number {
            while number % divisor == 0 {
                factors.append(divisor)
                number /= divisor
            }
            divisor += divisor == 2 ? 1 : 2
        }

        if number > 1 {
            factors.append(number)
        }

        if (factors.count == 0) {
            return nil
        }

        if (factors.count == 1) {
            return .prime
        }

        return .composite(factors: factors)
    }
}