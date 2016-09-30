import PackageDescription
let package = Package(
    name: "swiftBackend",
    dependencies: [
    .Package(url: "https://github.com/OpenKitten/MongoKitten.git", majorVersion: 1, minor: 7),
    .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 0)
]
)
