// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "BaseKitX",
	platforms: [
		.iOS(.v16),
		.macOS(.v13)
	],
	products: [
		.library(name: "BaseKitX", targets: ["BaseKitX"])
	],
	targets: [
		.target(name: "BaseKitX"),
		.testTarget(name: "BaseKitXTests", dependencies: ["BaseKitX"]),
	]
)
