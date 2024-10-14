# swift-html-htmx

[HTMX](https://htmx.org) extensions for [pointfreeco/swift-html](https://github.com/pointfreeco/swift-html)

### Usage

HtmlHtmx will add htmx extentions to the `Html.Attribute` type.

```swift
import Htmx
import HtmlHtmx

func example() -> Node {
  .div(
    .button(
      attributes: [
        .hxGet("/my-endpoint"),
        .hxTarget("#myDiv"),
        .hxSwap(.outerHTML),
      ],
      .text("Swapping html via hx-swap and hx-target")
    ),
    .div(attributes: [.id("myDiv")], .text("I'm getting replaced"))
  )
}
```

## Installation

Add the dependency to Package.swift

```swift
dependencies: [
  .package(url: "https://github.com/alephao/swift-html-htmx.git", from: "0.4.0")
],
```

Add the product to the target dependencies

```swift
.target(
  name: "MyTarget",
  dependencies: [
    // ...
    .product(name: "Htmx", package: "swift-htmx"),
    .product(name: "HtmlHtmx", package: "swift-htmx"),
  ]
)
```
