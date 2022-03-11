// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Squidward",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Squidward", targets: ["Squidward"]),
    ],
    targets: [
        .target(name: "Squidward", path: "Squidward"),
        .testTarget(name: "SquidwardTests", dependencies: ["Squidward"]),
    ]
)
