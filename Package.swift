// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-Pangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunPangle", targets: ["AdfurikunPangle"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            from: "4.4.000"
        ),
        .package(
            url: "https://github.com/bytedance/AdsGlobalPackage.git",
            exact: "7.8.5-release.7"
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
