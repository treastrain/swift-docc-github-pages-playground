// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "SquareLigatureEraNameDecomposer",
    defaultLocalization: "ja",
    products: [
        .library(
            name: "SquareLigatureEraNameDecomposer",
            targets: ["SquareLigatureEraNameDecomposer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SquareLigatureEraNameDecomposer",
            dependencies: []),
        .testTarget(
            name: "SquareLigatureEraNameDecomposerTests",
            dependencies: ["SquareLigatureEraNameDecomposer"]),
    ]
)
