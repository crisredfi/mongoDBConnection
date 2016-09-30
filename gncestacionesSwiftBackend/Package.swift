import PackageDescription

let package = Package(
    name: "gncestacionesSwiftBackend",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/OpenKitten/MongoKitten.git", majorVersion: 1, minor: 7)
    ],
    exclude: [
        "Config",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)

