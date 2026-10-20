// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationBidMachineAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationBidMachineAdapter",
            targets: ["AnyThinkMediationBidMachineAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkBidMachineAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkBidMachineAdapter/3.8.0.2.9/AnyThinkBidMachineAdapter-3.8.0.2.9.zip",
            checksum: "524e9ea10023438c5558e0374a5e1ae0244a1f86e5aaad0745c4c2882a142020"
        ),
        .target(
            name: "AnyThinkMediationBidMachineAdapterTarget",
            dependencies: [
                "AnyThinkBidMachineAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "BidMachine", package: "BidMachine-SPM")
            ],
            path: "Sources/AnyThinkMediationBidMachineAdapterTarget"
        )
    ]
)
