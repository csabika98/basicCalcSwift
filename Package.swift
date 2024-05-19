// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Basic Calculator",
    products: [
        .executable(name: "BasicCalc", targets: ["BasicCalc"]),
    ],
    dependencies: [],
    targets: [
        .executableTarget(name: "BasicCalc", dependencies: [])
    ]
)

