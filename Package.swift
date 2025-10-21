// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RTMModel",
    
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RTMModel",
            targets: ["RTMModel"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraRtm_Apple.git", branch: "lite_iOS"),
        .package(url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", .exact("4.6.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RTMModel",
            dependencies: [
                .product(name: "AgoraRTM", package: "AgoraRtm_Apple"),
                .product(name: "RtcBasic", package: "AgoraRtcEngine_iOS"),
            ]
        )
    ],
    swiftLanguageModes: [.v5]
)
