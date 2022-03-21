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
