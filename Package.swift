
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TVVLCKit-SPM",
    platforms: [
        .tvOS(.v13) // Set this to your minimum requirement
    ],
    products: [
        .library(
            name: "TVVLCKit",
            targets: ["TVVLCKitTarget"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TVVLCKitTarget",
            url: "https://github.com/Lana-Health/TVVLCKit-SPM/releases/v3.6.0/TVVLCKit.xcframework.zip",
            checksum: "f232cab7fd30d3bf05f0b8ef1e917753d7f0d6d54ea25adf39d4eb1b149d4d49"
        )
    ]
)
