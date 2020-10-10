// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Halton",
    products: [
        .library(
            name: "Halton",
            targets: ["Halton"]),
    ],
    targets: [
        .target(
            name: "Halton",
            dependencies: []),
        .testTarget(
            name: "HaltonTests",
            dependencies: ["Halton"]),
    ]
)
