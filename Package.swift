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
            checksum: "fab47a8abfb9239716f8403e5333ec042a6644f4f630e3d0932def7c975434e3"
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
