// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/svtk/KMMBridgeSample/svtk/kmmbridgesample/allshared-kmmbridge/0.1.1/allshared-kmmbridge-0.1.1.zip"
let remoteKotlinChecksum = "1958fe15c9c85244ab39be54a7983758a61640740e925c48a286ce051c503dc1"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)