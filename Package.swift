// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "user-api",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        
        .library(name: "UserApi", targets: ["UserApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feathercms/feather-api", .branch("main")),
    ],
    targets: [
        .target(name: "UserApi", dependencies: [
            .product(name: "FeatherApi", package: "feather-api"),
        ]),
    ]
)
