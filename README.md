# Squidward
A collection of additional layout anchor types meant to complement UIKit's existing constraint system.

[![Swift](https://img.shields.io/badge/swift-5.0-orange.svg)](https://developer.apple.com/swift/)
[![CocoaPods](https://img.shields.io/badge/pod-v1.2.0-blue.svg)](https://cocoapods.org/pods/Squidward)

## Requirements

- iOS 9.0+
- Xcode 10.2+
- Swift 5.0+

## Instalation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate the library into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Squidward', '1.2.0'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

```swift
dependencies: [
    .package(url: "https://github.com/berbschloe/Squidward.git", from: "1.2.0")
]
```

## Usage

#### Importing
It would be recommended to add the library globally because it can get annoying importing it everywhere.

```swift
// Add this to a GlobalImports.swift
@_exported import Squidward
```

### Constraints

## Old Way

```swift

let childView = UIView()

override func viewDidLoad() {
    super.viewDidLoad()

    NSLayoutConstraint.activate([
        childView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
        childView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 10),
        childView.topAnchor.constraint(equalTo: view.topAnchor, constant: -10),
        childView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
    ])
}
```

### Squidward Way

```swift
let childView = UIView()

override func viewDidLoad() {
    super.viewDidLoad()

    NSLayoutConstraint.activate([
        childView.edgeAnchors.constraint(equalTo: view.edgeAnchors, constant: 10)
    ])
}
```

### Variants

```swift

childView.edgeAnchors.constraint(equalTo: view.edgeAnchors) // default zero constant

childView.edgeAnchors.constraint(edges: [.left, .right, .top], equalTo: view.edgeAnchors) // constrain specific edges

childView.edgeAnchors.constraint(
    equalTo: view.edgeAnchors, 
    constant: UIEdgeInsets(top: 10, left: 20, bottom: 30, right: 40) // custom insets with no need to apply a negative
)

```
