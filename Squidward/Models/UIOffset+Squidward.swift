//
//  UIOffset+Squidward.swift
//  Squidward
//
//  Created by Brandon Erbschloe on 4/14/20.
//  Copyright © 2020 Brandon Erbschloe. All rights reserved.
//

import UIKit

extension UIOffset {
    
    public init(all: CGFloat) {
        self.init(horizontal: all, vertical: all)
    }
}

extension UIOffset: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self.init(all: CGFloat(value))
    }
}

extension UIOffset: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: Float) {
        self.init(all: CGFloat(value))
    }
}
