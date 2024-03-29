//
//  Squidward
//
//  Copyright (c) 2019 - Present Brandon Erbschloe - https://github.com/berbschloe
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import CoreGraphics

public struct VerticalInsets: Equatable {

    public static let zero = VerticalInsets()

    // The top constant.
    public var top: CGFloat

    // The bottom constant.
    public var bottom: CGFloat

    public init() {
        self.top = 0
        self.bottom = 0
    }

    public init(top: CGFloat, bottom: CGFloat) {
        self.top = top
        self.bottom = bottom
    }
    
    public init(all: CGFloat) {
        self.init(top: all, bottom: all)
    }
}

extension VerticalInsets: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self.init(all: CGFloat(value))
    }
}

extension VerticalInsets: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: Float) {
        self.init(all: CGFloat(value))
    }
}

