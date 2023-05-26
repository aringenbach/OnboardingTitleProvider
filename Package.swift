// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnboardingTitleProvider",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "OnboardingTitleProvider",
            targets: ["OnboardingTitleProvider"]),
    ],
    dependencies: [
        // Note: this could either point to the local ModuleSDK inside ElementX folder
        // or a remote one
        .package(path: "../../element-x-ios/Modules/ModuleSDK"),
        // .package(url: "https://github.com/aringenbach/ModuleSDK", exact: "0.0.1"),
    ],
    targets: [
        .target(
            name: "OnboardingTitleProvider",
            dependencies: ["ModuleSDK"]),
        .testTarget(
            name: "OnboardingTitleProviderTests",
            dependencies: ["OnboardingTitleProvider"]),
    ]
)
