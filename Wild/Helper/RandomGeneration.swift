//
//  RamdomGeneration.swift
//  Wild
//
//  Created by David Viloria Ortega on 13/01/25.
//

import Foundation

struct RandomGenerator {
    static func size() -> CGFloat {
        CGFloat.random(in: 10...300)
    }

    static func speed() -> Double {
        Double.random(in: 0.025...1.0)
    }

    static func delay() -> Double {
        Double.random(in: 0...2)
    }

    static func scale() -> CGFloat {
        CGFloat.random(in: 0.1...2.0)
    }

    static func coordinate(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
}
