// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SendbirdUIKit",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SendbirdUIKit",
            targets: ["SendbirdUIKit", "SendbirdChatSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdUIKit",
            url: "https://github.com/sendbird/sendbird-uikit-ios/releases/download/3.25.0/SendbirdUIKit.xcframework.zip",
            checksum: "de9c130c502541b8842cad37d0f9659e65408cdd3485b40592f1a3abab8fc7dc"
        ),
        .binaryTarget(
            name: "SendbirdChatSDK",
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios/releases/download/4.19.9/SendbirdChatSDK.xcframework.zip",
            checksum: "fc1056f59106f7aa870422f29b5cb607dac01b20b0bd7f53b824c5b87263313d"
        )
    ]
)
