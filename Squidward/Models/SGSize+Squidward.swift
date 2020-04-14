//
//  SGSize+Squidward.swift
//  Squidward
//
//  Created by Brandon Erbschloe on 4/14/20.
//  Copyright © 2020 Brandon Erbschloe. All rights reserved.
//

import CoreGraphics

extension CGSize {
    
    public init(all: CGFloat) {
        self.init(width: all, height: all)
    }
}

extension CGSize: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self.init(all: CGFloat(value))
    }
}

extension CGSize: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: Float) {
        self.init(all: CGFloat(value))
    }
}
