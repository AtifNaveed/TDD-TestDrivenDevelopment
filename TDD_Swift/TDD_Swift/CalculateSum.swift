//
//  CalculateSum.swift
//  TDD_Swift
//
//  Created by Atif on 24/09/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import UIKit

class CalculateSum {
    func sum(numbers: String) -> Int {
        let array = numbers.components(separatedBy:
            [" ", ",", "\n", ";", "'", "\"", "(", ")", "{", "}", "|", "/"])
            .compactMap { Int($0) }
        let sum  = array.reduce(0) {$0 + $1}
        if sum > 9999999999 {return 0}
        return sum
    }
}
