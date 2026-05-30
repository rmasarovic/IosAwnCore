// swift-tools-version:5.5
//
// IosAwnCore — Awesome Notifications iOS Core
//
// Swift Package Manager manifest.
// The sources stay in `IosAwnCore/Classes` so the existing CocoaPods
// integration (IosAwnCore.podspec) keeps working unchanged.
//
import PackageDescription

let package = Package(
    name: "IosAwnCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IosAwnCore",
            targets: ["IosAwnCore"]
        )
    ],
    targets: [
        .target(
            name: "IosAwnCore",
            path: "IosAwnCore/Classes",
            linkerSettings: [
                // SQLite3 is used by SQLitePrimitivesDB. The system module
                // map auto-links it, but we declare it explicitly for safety.
                .linkedLibrary("sqlite3")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
