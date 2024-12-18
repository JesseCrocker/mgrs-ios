// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "mgrs-ios",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "mgrs_ios",
            targets: ["mgrs_ios"]),
    ],
    dependencies: [
        .package(name: "grid_ios", url: "https://github.com/jessecrocker/grid-ios.git", .branch("swift-package")),
        .package(name: "color_ios", url: "https://github.com/jessecrocker/color-ios.git", .branch("swift-package")),
    ],
    targets: [
        .target(
            name: "mgrs_ios",
            dependencies: ["grid_ios", "color_ios"],
            path: "mgrs-ios",
            resources: [
                .process("mgrs.plist")
            ]
        ),
        .testTarget(
            name: "mgrs-iosTests",
            dependencies: ["mgrs_ios"],
            path: "mgrs-iosTests"
        )
    ]
)