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

import UIKit

public struct DirectionalHorizontalInsets: Hashable, Codable {

    public static let zero = DirectionalHorizontalInsets()

    /// The leading constant.
    public var leading: CGFloat

    /// The trailing constant.
    public var trailing: CGFloat

    public init() {
        self.leading = 0
        self.trailing = 0
    }
    
    public init(all: CGFloat) {
        self.init(leading: all, trailing: all)
    }

    public init(leading: CGFloat, trailing: CGFloat) {
        self.leading = leading
        self.trailing = trailing
    }
}

extension DirectionalHorizontalInsets: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self.init(all: CGFloat(value))
    }
}

extension DirectionalHorizontalInsets: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: Float) {
        self.init(all: CGFloat(value))
    }
}
