// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Team Maddux Event App",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Team Maddux Event App",
            targets: ["AppModule"],
            bundleIdentifier: "PHS.Team-Maddux-Event-App",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .beachball),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)