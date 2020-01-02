// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "IBSwiftToolKit",
  platforms: [
    .macOS(.v10_13),
    .iOS(.v10),
    .tvOS(.v10),
    .watchOS(.v2)
  ],
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(
      name: "IBSwiftToolKit",
      targets: ["IBSwiftToolKit"]),
  ],
  targets: [
    .target(
      name: "IBSwiftToolKit")
  ]
)
