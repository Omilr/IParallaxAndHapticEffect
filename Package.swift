// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "IParallaxAndHapticEffect",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "IParallaxAndHapticEffect",
                 targets: ["IParallaxAndHapticEffect"])
    ],
    targets: [
        .target(name: "IParallaxAndHapticEffect",
                path: "IParallaxAndHapticEffect/Core")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
