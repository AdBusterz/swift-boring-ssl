// swift-tools-version:5.0
//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

// This package contains a vendored copy of BoringSSL. For ease of tracking
// down problems with the copy of BoringSSL in use, we include a copy of the
// commit hash of the revision of BoringSSL included in the given release.
// This is also reproduced in a file called hash.txt in the
// Sources/CNIOBoringSSL directory. The source repository is at
// https://boringssl.googlesource.com/boringssl.
//
// BoringSSL Commit: ab7811ee8751ea699b22095caa70246f641ed3a2

let package = Package(
    name: "boring-ssl",
    products: [
//         .library(name: "NIOSSL", targets: ["NIOSSL"]),
//         .executable(name: "NIOTLSServer", targets: ["NIOTLSServer"]),
//         .executable(name: "NIOSSLHTTP1Client", targets: ["NIOSSLHTTP1Client"]),
        .library(name: "CBoringSSL", type: .static, targets: ["CBoringSSL", "CBoringSSLShims"]),
    ],
//    dependencies: [
//        .package(url: "https://github.com/apple/swift-nio.git", from: "2.15.0"),
//    ],
    targets: [
        .target(name: "CBoringSSL"),
        .target(name: "CBoringSSLShims", dependencies: ["CBoringSSL"]),
//         .target(name: "NIOSSL",
//                 dependencies: ["NIO", "NIOConcurrencyHelpers", "CNIOBoringSSL", "CNIOBoringSSLShims", "NIOTLS"]),
//         .target(name: "NIOTLSServer", dependencies: ["NIO", "NIOSSL", "NIOConcurrencyHelpers"]),
//         .target(name: "NIOSSLHTTP1Client", dependencies: ["NIO", "NIOHTTP1", "NIOSSL", "NIOFoundationCompat"]),
//         .target(name: "NIOSSLPerformanceTester", dependencies: ["NIO", "NIOSSL"]),
//         .testTarget(name: "NIOSSLTests", dependencies: ["NIOTLS", "NIOSSL"]),
    ],
    cxxLanguageStandard: .cxx14
)
