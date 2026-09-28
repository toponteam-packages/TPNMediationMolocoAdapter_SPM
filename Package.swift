// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationMolocoAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationMolocoAdapter",
            targets: ["TPNMediationMolocoAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMolocoAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMolocoAdapter/4.8.0.2.1/AnyThinkMolocoAdapter-4.8.0.2.1.zip",
            checksum: "63c0a76f03a75c44a0dbe9d7c915c61ee028b6d90a99087c6d7f63ffdfd710cf"
        ),
        .target(
            name: "TPNMediationMolocoAdapterTarget",
            dependencies: [
                "AnyThinkMolocoAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm")
            ],
            path: "Sources/TPNMediationMolocoAdapterTarget"
        )
    ]
)
