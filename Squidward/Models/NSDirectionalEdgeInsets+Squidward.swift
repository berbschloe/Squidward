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

extension NSDirectionalEdgeInsets {

    public init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
    }
    
    public init(all: CGFloat) {
        self.init(top: all, leading: all, bottom: all, trailing: all)
    }

    public var horizontal: DirectionalHorizontalInsets {
        get {
            return DirectionalHorizontalInsets(leading: leading, trailing: trailing)
        }
        set {
            self.leading = newValue.leading
            self.trailing = newValue.trailing
        }
    }

    public var vertical: VerticalInsets {
        get {
            return VerticalInsets(top: top, bottom: bottom)
        }
        set {
            top = newValue.top
            bottom = newValue.bottom
        }
    }
}

extension NSDirectionalEdgeInsets: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self.init(all: CGFloat(value))
    }
}

extension NSDirectionalEdgeInsets: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: Float) {
        self.init(all: CGFloat(value))
    }
}
