// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "libaom",
  platforms: [.iOS(.v11), .macOS(.v12), .macCatalyst(.v14), .tvOS(.v11)],
  products: [
    .library(
      name: "libaom",
      targets: ["libaom", "Clibaom"]),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(
      name: "libaom",
      path: "Sources/libaom.xcframework"),
    .target(
      name: "Clibaom",
      path: "Sources/Clibaom",
      publicHeadersPath: "include"
    )
  ]
)
