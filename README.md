# Sendbird iOS UIKit

A Swift Package proxy to serve up the precompiled [SendbirdUIKit](https://github.com/sendbird/sendbird-uikit-ios-spm) and it's transitive [SendbirdChatSDK](https://github.com/sendbird/sendbird-chat-sdk-ios) dependency.

## Motivation

This repository exists to streamline the package's download and installation filesize. [There is an open issue on the proxied repository](https://github.com/sendbird/sendbird-uikit-ios-spm/issues/42), which if resolved would cause deprecation of this project.

## Updating

In order to release a new version

1. Choose the [sendbird-ui-kit-ios release](https://github.com/sendbird/sendbird-uikit-ios/releases) you would like and copy the xcframework zip uri.
2. Reference that tag's Package.swift and choose the matching xcframework zip from the [sendbird-chat-sdk-ios releases](https://github.com/sendbird/sendbird-chat-sdk-ios/releases).
3. Download both artifacts and verify them
    a. Determine the checksums e.g. `swift package compute-checksum ~/Downloads/SendbirdUIKit.xcframework.zip`
4. Replace the artifact urls and checksums in [Package.swift](./Package.swift)
5. Verify the package resolves correctly `swift package resolve`
