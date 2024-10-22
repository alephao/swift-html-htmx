// swift-tools-version: 5.8

import PackageDescription

let package = Package(
  name: "swift-html-htmx",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
  ],
  products: [
    .library(name: "HtmlHtmx", targets: ["HtmlHtmx"])
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-html.git", from: "0.5.0")
  ],
  targets: [
    .target(
      name: "HtmlHtmx",
      dependencies: [
        .product(name: "Html", package: "swift-html")
      ]
    )
  ]
)
