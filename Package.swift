// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "user-objects",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "UserObjects", targets: ["UserObjects"])
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-objects.git", branch: "test-dev")
    ],
    targets: [
        .target(name: "UserObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects")
        ]),
        .testTarget(name: "UserObjectsTests", dependencies: [
            .target(name: "UserObjects")
        ]),
    ],
    swiftLanguageVersions: [.v5]
)
