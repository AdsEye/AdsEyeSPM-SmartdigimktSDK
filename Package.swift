// swift-tools-version: 5.9
// 此文件由 AdsEye 第三方 SPM 镜像流程生成，请勿手工修改 checksum。
import PackageDescription

let package = Package(
    name: "SmartdigimktSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SmartdigimktSDK", targets: ["SmartdigimktSDKWrapper"])
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "SmartdigimktSDKWrapper",
            dependencies: [
                .target(name: "SmartdigimktSDK")
            ],
            resources: [
                .copy("Resources/SmartdigimktSDK.bundle")
            ],
            linkerSettings: [
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Foundation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedLibrary("c++"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z")
            ]
        ),
        .binaryTarget(
    name: "SmartdigimktSDK",
    url: "https://github.com/AdsEye/AdsEyeSPM-SmartdigimktSDK/releases/download/6.5.65/SmartdigimktSDK-6.5.65.zip",
    checksum: "07e17861263d1f9a596966d37b6c2939a8c69064425c675b2c950efcf3f1c66f"
)
    ]
)
