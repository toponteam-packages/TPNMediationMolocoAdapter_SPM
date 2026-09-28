# TopOn - iOS Moloco Mediation Adapter

The TopOn Moloco mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/toponteam-packages/TPNMediationMolocoAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `40800.2.1`).
4. Add the `TPNMediationMolocoAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/TPNMediationMolocoAdapter_SPM.git",
        exact: "40800.2.1"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/toponteam-packages/TPNiOS_SPM) (>= 6.5.0)
- [`MolocoSDK`](https://github.com/moloco/moloco-sdk-ios-spm) (pinned to the version certified for this adapter release)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
