// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Thermos",
    platforms: [.macOS(.v13), .iOS(.v14), .tvOS(.v13), .macCatalyst(.v13)],
    dependencies: [
        .package(
            url: "https://github.com/stackotter/swift-cross-ui",
            revision: "684b714410155223b9f54ca9d74867406c70009d"
        ),
        .package(
            url: "https://github.com/MasterJ93/AtProtoKit.git",
            from: "0.28.0"
        )
    ],
    targets: [
        .executableTarget(
            name: "Thermos",
            dependencies: [
                .product(name: "SwiftCrossUI", package: "swift-cross-ui"),
                .product(name: "DefaultBackend", package: "swift-cross-ui"),
                .product(name: "ATProtoKit", package: "atprotokit")
            ]
        )
    ]
)
