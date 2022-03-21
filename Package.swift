// swift-tools-version: 5.5

import PackageDescription

let dependencies: [Package.Dependency]
#if swift(>=5.6)
dependencies = [
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
]
#else
dependencies = []
#endif

let package = Package(
    name: "SquareLigatureEraNameDecomposer",
    defaultLocalization: "ja",
    products: [
        .library(
            name: "SquareLigatureEraNameDecomposer",
            targets: ["SquareLigatureEraNameDecomposer"]),
    ],
    dependencies: dependencies,
    targets: [
        .target(
            name: "SquareLigatureEraNameDecomposer",
            dependencies: []),
        .testTarget(
            name: "SquareLigatureEraNameDecomposerTests",
            dependencies: ["SquareLigatureEraNameDecomposer"]),
    ]
)
