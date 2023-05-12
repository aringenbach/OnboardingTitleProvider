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
        // Note: at the moment this expects to be in a folder at the same hierarchy
        // level as the Element-X folder. This path should be generated upon installing
        // the package instead.
        .package(path: "../../element-x-ios/Modules/ModuleSDK"),
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
