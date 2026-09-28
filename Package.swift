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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkBidMachineAdapter/3.8.0.2.0/AnyThinkBidMachineAdapter-3.8.0.2.0.zip",
            checksum: "ec65b47b0d06e8a2f3890234806a39efae524e32f7b4b7aca6277303a0fbf577"
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
