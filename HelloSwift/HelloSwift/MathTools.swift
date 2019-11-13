//
//  MathTools.swift
//  HelloSwift
//
//  Created by Krystian Duma on 13/11/2019.
//  Copyright © 2019 Krystian Duma. All rights reserved.
//

import Foundation



class MathTools {

    public func fibonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }

        if n == 1 || n == 2 {
            return 1
        }

        var a = 1, b = 1

        for _ in 3...n {
            b = a+b
            a = b-a
        }

        return b
    }
}
