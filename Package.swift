// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EmbedSDKSPMPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EmbedSDKSPMPackage",
            targets: ["EmbedSDKSPMPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "EmbedSDKSPMPackage",
            dependencies: [
                            .target(name: "embed-sdk")
                          ]
        ),
        .binaryTarget(name: "embed-sdk",
                      path: "Sources/EmbedSDKSPMPackage/embed-sdk.xcframework")
    ]
)
