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
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios/releases/download/4.19.8/SendbirdChatSDK.xcframework.zip",
            checksum: "3dafe57b89776132287cfbd89c9b0dde726785ab03a1c9b29a909ed17958235a"
        ),
    ]
)
