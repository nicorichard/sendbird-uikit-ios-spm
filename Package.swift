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
            url: "https://github.com/sendbird/sendbird-uikit-ios/releases/download/3.24.2/SendbirdUIKit.xcframework.zip",
            checksum: "c3d139fbe0e664bca4fd4dbebc61b12e30db0e7dbef743ae104cc9213a910477"
        ),
        .binaryTarget(
            name: "SendbirdChatSDK",
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios/releases/download/4.19.7/SendbirdChatSDK.xcframework.zip",
            checksum: "09fef9575cd6506d73129f2664a97e4ff7d9c83741751b0b36c96e41a7f7feb0"
        )
    ]
)
