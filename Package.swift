// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ICantBelieveItCanSort",
    products: [
        .library(name: "ICantBelieveItCanSort", targets: ["ICantBelieveItCanSort"]),
        .executable(name: "SortPlayground", targets: ["SortPlayground"]),
    ],
    targets: [
        .target(name: "ICantBelieveItCanSort"),
        .testTarget(name: "ICantBelieveItCanSortTests", dependencies: ["ICantBelieveItCanSort"]),
        .target(name: "SortPlayground", dependencies: ["ICantBelieveItCanSort"]),
        // .executableTarget(name: "SortPlayground", dependencies: ["ICantBelieveItCanSort"]),
    ]
)
