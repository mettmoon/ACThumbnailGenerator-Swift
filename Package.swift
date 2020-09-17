// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACThumbnailGenerator-Swift",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ACThumbnailGenerator-Swift",
            targets: ["ACThumbnailGenerator-Swift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ACThumbnailGenerator-Swift",
            dependencies: []),
        .testTarget(
            name: "ACThumbnailGenerator-SwiftTests",
            dependencies: ["ACThumbnailGenerator-Swift"]),
    ]
)
