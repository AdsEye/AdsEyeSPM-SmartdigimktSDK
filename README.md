# SmartdigimktSDK Swift Package

`SmartdigimktSDK` 6.5.65 的 Swift Package Manager 二进制镜像，由 AdsEye 维护。

> 本仓库不是供应商官方 SPM 仓库。二进制来自供应商 CocoaPods 6.5.65 版本，来源和许可信息见 [ThirdPartyNotices.md](ThirdPartyNotices.md)。

## 环境要求

- iOS 13.0 或更高版本
- Xcode 15.0 或更高版本
- Swift Package tag：`6.5.65`

## 通过 Xcode 接入

1. 打开工程，选择 **File > Add Package Dependencies...**。
2. 输入仓库地址：`https://github.com/AdsEye/AdsEyeSPM-SmartdigimktSDK.git`。
3. Dependency Rule 选择 **Exact Version**，版本填写 `6.5.65`。
4. 将 product `SmartdigimktSDK` 添加到媒体 App target。

## 通过 Package.swift 接入

```swift
dependencies: [
    .package(url: "https://github.com/AdsEye/AdsEyeSPM-SmartdigimktSDK.git", exact: "6.5.65")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "SmartdigimktSDK", package: "adseyespm-smartdigimktsdk")
        ]
    )
]
```


## Binary targets

- `SmartdigimktSDK`

## Linker setting

媒体 App target 需要在 `Other Linker Flags` 中保留 `-ObjC`。SwiftPM 不能为版本依赖安全地下发该参数。

## 许可证

使用本软件包前请阅读 [ThirdPartyNotices.md](ThirdPartyNotices.md)，并遵守供应商许可及服务条款。
