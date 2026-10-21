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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMolocoAdapter/4.10.0.2.9/AnyThinkMolocoAdapter-4.10.0.2.9.zip",
            checksum: "d1311f94779ed735ed8b4483ae16669e8170b410e6278cd4d942ea52cb12c1f1"
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
