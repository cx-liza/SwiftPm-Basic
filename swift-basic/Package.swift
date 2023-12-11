// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlayingCard",
    products: [
        .library(name: "PlayingCard", targets: ["PlayingCard"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/vapor/vapor.git", 
            .exact("4.48.3")
        )
    ],
    targets: [
        .target(name: "PlayingCard", dependencies: [
                .product(name: "Vapor", package: "vapor")
            ]),
        .testTarget(
            name: "PlayingCardTests",
            dependencies: ["PlayingCard"]),
    ]
)
