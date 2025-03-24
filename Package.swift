// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "FirebaseSPMPackage",
    platforms: [.iOS(.v13)],
    products: [
        // FirebaseAnalytics Library
        .library(
            name: "FirebaseAnalytics",
            targets: [
                "FBLPromisesXC",
                "FirebaseAnalyticsXC",
                "FirebaseCoreXC",
                "FirebaseCoreInternalXC",
                "FirebaseInstallationsXC",
                "GoogleAppMeasurementXC",
                "GoogleAppMeasurementIdentitySupportXC",
                "GoogleUtilitiesXC",
                "nanopbXC"
            ]
        ),

        // FirebaseAuth Library
        .library(
            name: "FirebaseAuth",
            targets: [
                "FirebaseAppCheckInteropXC",
                "FirebaseAuthXC",
                "FirebaseAuthInteropXC",
                "FirebaseCoreExtensionXC",
                "GTMSessionFetcherXC",
                "RecaptchaInteropXC"
            ]
        ),

        // FirebaseDatabase Library
        .library(
            name: "FirebaseDatabase",
            targets: [
                "FirebaseAppCheckInteropXC",
                "FirebaseDatabaseXC",
                "FirebaseSharedSwiftXC",
                "leveldbXC"
            ]
        ),

        // FirebaseMessaging Library
        .library(
            name: "FirebaseMessaging",
            targets: [
                "FirebaseMessagingXC",
                "GoogleDataTransportXC"
            ]
        ),
    ],
    targets: [
        // Shared Binary Targets
        .binaryTarget(name: "FirebaseAppCheckInteropXC", path: "./Firebase/FirebaseShared/FirebaseAppCheckInterop.xcframework"),

        // FirebaseAnalytics Binary Targets
        .binaryTarget(name: "FBLPromisesXC", path: "./Firebase/FirebaseAnalytics/FBLPromises.xcframework"),
        .binaryTarget(name: "FirebaseAnalyticsXC", path: "./Firebase/FirebaseAnalytics/FirebaseAnalytics.xcframework"),
        .binaryTarget(name: "FirebaseCoreXC", path: "./Firebase/FirebaseAnalytics/FirebaseCore.xcframework"),
        .binaryTarget(name: "FirebaseCoreInternalXC", path: "./Firebase/FirebaseAnalytics/FirebaseCoreInternal.xcframework"),
        .binaryTarget(name: "FirebaseInstallationsXC", path: "./Firebase/FirebaseAnalytics/FirebaseInstallations.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurementXC", path: "./Firebase/FirebaseAnalytics/GoogleAppMeasurement.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurementIdentitySupportXC", path: "./Firebase/FirebaseAnalytics/GoogleAppMeasurementIdentitySupport.xcframework"),
        .binaryTarget(name: "GoogleUtilitiesXC", path: "./Firebase/FirebaseAnalytics/GoogleUtilities.xcframework"),
        .binaryTarget(name: "nanopbXC", path: "./Firebase/FirebaseAnalytics/nanopb.xcframework"),

        // FirebaseAuth Binary Targets
        .binaryTarget(name: "FirebaseAuthXC", path: "./Firebase/FirebaseAuth/FirebaseAuth.xcframework"),
        .binaryTarget(name: "FirebaseAuthInteropXC", path: "./Firebase/FirebaseAuth/FirebaseAuthInterop.xcframework"),
        .binaryTarget(name: "FirebaseCoreExtensionXC", path: "./Firebase/FirebaseAuth/FirebaseCoreExtension.xcframework"),
        .binaryTarget(name: "GTMSessionFetcherXC", path: "./Firebase/FirebaseAuth/GTMSessionFetcher.xcframework"),
        .binaryTarget(name: "RecaptchaInteropXC", path: "./Firebase/FirebaseAuth/RecaptchaInterop.xcframework"),

        // FirebaseDatabase Binary Targets
        .binaryTarget(name: "FirebaseDatabaseXC", path: "./Firebase/FirebaseDatabase/FirebaseDatabase.xcframework"),
        .binaryTarget(name: "FirebaseSharedSwiftXC", path: "./Firebase/FirebaseDatabase/FirebaseSharedSwift.xcframework"),
        .binaryTarget(name: "leveldbXC", path: "./Firebase/FirebaseDatabase/leveldb.xcframework"),

        // FirebaseMessaging Binary Targets
        .binaryTarget(name: "FirebaseMessagingXC", path: "./Firebase/FirebaseMessaging/FirebaseMessaging.xcframework"),
        .binaryTarget(name: "GoogleDataTransportXC", path: "./Firebase/FirebaseMessaging/GoogleDataTransport.xcframework"),
    ]
)
