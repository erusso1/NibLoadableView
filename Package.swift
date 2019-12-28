// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NibLoadableView",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "NibLoadableView",
            targets: ["NibLoadableView"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NibLoadableView",
            dependencies: [
            ],
            path: "NibLoadableView"),
        .testTarget(
            name: "NibLoadableViewTests",
            dependencies: ["NibLoadableView"],
            path: "Example/Tests"),
    ],
    swiftLanguageVersions: [.v5]
)

