// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "AdfurikunPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunPangle", targets: ["AdfurikunPangle"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.5.0-alpha.4"
        ),
        .package(
            url: "https://github.com/bytedance/AdsGlobalPackage.git",
            exact: "8.2.1-release.2"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunPangle",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
