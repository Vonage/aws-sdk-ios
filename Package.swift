// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
//aws-sdk-ios
import PackageDescription

let package = Package(
    name: "aws-sdk-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AWSS3",
            targets: ["AWSS3"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AWSS3",
            dependencies:[
                "AWSCore"
            ],
            path: "AWSS3",
            publicHeadersPath: "include"
        ),
        .target(
            name: "AWSCore",
            path: "AWSCore",
            publicHeadersPath: "include",
            linkerSettings: [
                // Frameworks
                .linkedFramework("CoreGraphics"),
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("Security"),
                // Libraries
                .linkedLibrary("z"),
                .linkedLibrary("sqlite3")
            ]
        )
    ]
)
