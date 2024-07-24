// swift-tools-version: 6.0

import PackageDescription

let embeddedSwiftSettings: [SwiftSetting] = [
    .enableExperimentalFeature("Embedded"),
    .interoperabilityMode(.Cxx),
    .unsafeFlags([
        "-wmo", "-disable-cmo",
        "-Xfrontend", "-gnone",
        "-Xfrontend", "-disable-stack-protector",
        "-Xfrontend", "-function-sections",
    ])
]

let embeddedCSettings: [CSetting] = [
    .unsafeFlags([
        "-fdeclspec",
        "-ffreestanding",
        "-march=rv32gc",
        "-mabi=ilp32",
    ])
]

let linkerSettings: [LinkerSetting] = [
    .unsafeFlags([
        "-Xclang-linker", "-nostdlib",
        "-Xlinker", "--no-entry",
        "-Xlinker", "-dead_strip"
    ])
]

let package = Package(
    name: "riscv32-swift-os",
    platforms: [.macOS(.v14)],
    products: [
        .library(
            name: "OperatingSystem",
            targets: ["OperatingSystem"]),
    ],
    dependencies: [
    .package(url: "https://github.com/apple/swift-mmio", revision: "aebdfa527c6224b6cf5288290d75bb1d4e8d3053"), // branch swift6
    ],
    targets: [
        .target(
            name: "OperatingSystem",
            dependencies: [
                .product(name: "MMIO", package: "swift-mmio"),
                "Support",
            ],
            cSettings: embeddedCSettings,
            swiftSettings: embeddedSwiftSettings,
            linkerSettings: linkerSettings
        ),
        .target(name: "Support"),
    ]
)
