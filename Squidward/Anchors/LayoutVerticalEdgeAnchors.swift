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

public final class LayoutVerticalEdgeAnchors {

    /// The top layout anchor.
    internal let top: NSLayoutYAxisAnchor

    /// The bottom layout anchor.
    internal let bottom: NSLayoutYAxisAnchor

    internal init(top: NSLayoutYAxisAnchor, bottom: NSLayoutYAxisAnchor) {
        self.top = top
        self.bottom = bottom
    }

    public func constraint(equalTo anchors: LayoutVerticalEdgeAnchors,
                           constant: VerticalInsets = .zero) -> LayoutVerticalEdgeConstraints {

        return LayoutVerticalEdgeConstraints(
            top: top.constraint(equalTo: anchors.top, constant: constant.top),
            bottom: bottom.constraint(equalTo: anchors.bottom, constant: -constant.bottom)
        )
    }

    public func constraint(outsideOfOrEqualTo anchors: LayoutVerticalEdgeAnchors,
                           constant: VerticalInsets = .zero) -> LayoutVerticalEdgeConstraints {

        return LayoutVerticalEdgeConstraints(
            top: top.constraint(lessThanOrEqualTo: anchors.top, constant: constant.top),
            bottom: bottom.constraint(greaterThanOrEqualTo: anchors.bottom, constant: -constant.bottom)
        )
    }

    public func constraint(insideOfOrEqualTo anchors: LayoutVerticalEdgeAnchors,
                           constant: VerticalInsets = .zero) -> LayoutVerticalEdgeConstraints {

        return LayoutVerticalEdgeConstraints(
            top: top.constraint(greaterThanOrEqualTo: anchors.top, constant: constant.top),
            bottom: bottom.constraint(lessThanOrEqualTo: anchors.bottom, constant: -constant.bottom)
        )
    }
}

extension LayoutGuide {

    public var verticalEdgeAnchors: LayoutVerticalEdgeAnchors {
        return LayoutVerticalEdgeAnchors(top: topAnchor, bottom: bottomAnchor)
    }
}

public final class LayoutVerticalEdgeConstraints {

    public let top: NSLayoutConstraint

    public let bottom: NSLayoutConstraint

    internal init(top: NSLayoutConstraint, bottom: NSLayoutConstraint) {
        self.top = top
        self.bottom = bottom
    }

    public var constant: VerticalInsets {
        get {
            return VerticalInsets(top: top.constant, bottom: -bottom.constant)
        }
        set {
            top.constant = newValue.top
            bottom.constant = -newValue.bottom
        }
    }
}

extension LayoutVerticalEdgeConstraints: LayoutConstraintGroup {

    public var constraints: [NSLayoutConstraint] {
        return [top, bottom]
    }
}
