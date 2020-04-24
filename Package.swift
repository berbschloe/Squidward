import PackageDescription

let package = Package(
    name: "Squidward",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Squidward", targets: ["Squidward"]),
    ],
    targets: [
        .target(name: "Squidward", path: "Squidward"),
        .testTarget(name: "SquidwardTests", dependencies: ["Squidward"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
