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

public protocol AllInitalizable {

    associatedtype Value

    init(all value: Value)
}

extension AllInitalizable where Self: ExpressibleByIntegerLiteral, Self.Value == CGFloat {

    public init(integerLiteral value: Int) {
        self.init(all: CGFloat(value))
    }
}

extension AllInitalizable where Self: ExpressibleByFloatLiteral, Self.Value == CGFloat  {

    public init(floatLiteral value: Float) {
        self.init(all: CGFloat(value))
    }
}

extension UIEdgeInsets: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(top: value, left: value, bottom: value, right: value)
    }
}

extension CGSize: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(width: value, height: value)
    }
}

extension UIOffset: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(horizontal: value, vertical: value)
    }
}

extension DirectionalEdgeInsets: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(top: value, leading: value, bottom: value, trailing: value)
    }
}

extension VerticalInsets: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(top: value, bottom: value)
    }
}

extension HorizontalInsets: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(left: value, right: value)
    }
}

extension DirectionalHorizontalInsets: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(leading: value, trailing: value)
    }
}

@available(iOS 11.0, *)
extension NSDirectionalEdgeInsets: AllInitalizable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(all value: CGFloat) {
        self.init(top: value, leading: value, bottom: value, trailing: value)
    }
}
