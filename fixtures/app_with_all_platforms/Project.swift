import ProjectDescription

let project = Project(
    name: "AppWithWatchApp",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.App",
            infoPlist: .default,
            sources: [
                "App/Sources/**",
            ],
            resources: [
                "App/Resources/**",
            ],
            dependencies: [
                .target(name: "WatchApp"),
                .target(name: "Framework_a_ios"),
            ]
        ),
        .target(
            name: "AppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.App.appTests",
            infoPlist: .default,
            sources: "App/Tests/**",
            dependencies: [
                .target(name: "App"),
            ]
        ),
        .target(
            name: "Framework_a_ios",
            destinations: .iOS,
            product: .framework,
            productName: "FrameworkA",
            bundleId: "io.tuist.framework.a.ios",
            sources: ["FrameworkA/Sources/**"]
        ),
        .target(
            name: "Framework_a_tests",
            destinations: .iOS,
            product: .unitTests,
            productName: "FrameworkATests",
            bundleId: "io.tuist.framework.a.ios.tests",
            sources: "FrameworkA/Tests/**",
            dependencies: [
                .target(name: "Framework_a_ios"),
            ]

        ),
        .target(
            name: "Framework_b_watchos",
            destinations: [.appleWatch],
            product: .framework,
            productName: "FrameworkB",
            bundleId: "io.tuist.framework.a.watch",
            sources: ["FrameworkB/Sources/**"]

        ),
        .target(
            name: "Framework_b_watchos_tests",
            destinations: [.appleWatch],
            product: .unitTests,
            productName: "FrameworkBTests",
            bundleId: "io.tuist.framework.b.watch.tests",
            sources: ["FrameworkB/Tests/**"],
            dependencies: [
                .target(name: "Framework_b_watchos"),
            ]

        ),
        .target(
            name: "WatchApp",
            destinations: [.appleWatch],
            product: .app,
            bundleId: "io.tuist.App.watchkitapp",
            infoPlist: nil,
            sources: "WatchApp/Sources/**",
            resources: "WatchApp/Resources/**",
            dependencies: [
                .target(name: "WatchWidgetExtension"),
                .target(name: "Framework_b_watchos"),
            ],
            settings: .settings(
                base: [
                    "GENERATE_INFOPLIST_FILE": true,
                    "CURRENT_PROJECT_VERSION": "1.0",
                    "MARKETING_VERSION": "1.0",
                    "INFOPLIST_KEY_UISupportedInterfaceOrientations": [
                        "UIInterfaceOrientationPortrait",
                        "UIInterfaceOrientationPortraitUpsideDown",
                    ],
                    "INFOPLIST_KEY_WKCompanionAppBundleIdentifier": "io.tuist.App",
                    "INFOPLIST_KEY_WKRunsIndependentlyOfCompanionApp": false,
                ]
            )
        ),
        .target(
            name: "WatchWidgetExtension",
            destinations: [.appleWatch],
            product: .appExtension,
            bundleId: "io.tuist.App.watchkitapp.widgetExtension",
            infoPlist: .extendingDefault(with: [
                "CFBundleDisplayName": "$(PRODUCT_NAME)",
                "NSExtension": [
                    "NSExtensionPointIdentifier": "com.apple.widgetkit-extension",
                ],
            ]),
            sources: "WatchWidgetExtension/Sources/**",
            resources: "WatchWidgetExtension/Resources/**",
            dependencies: [
                .target(name: "Framework_b_watchos"),
            ]
        ),
        .target(
            name: "WatchAppTests",
            destinations: .watchOS,
            product: .unitTests,
            bundleId: "io.tuist.App.watchkitapptests",
            infoPlist: .default,
            sources: "WatchApp/Tests/**",
            dependencies: [
                .target(name: "WatchApp"),
            ]
        ),
        .target(
            name: "MacApp",
            destinations: .macOS,
            product: .app,
            bundleId: "io.tuist.MacApp",
            infoPlist: .default,
            sources: [
                "MacApp/Sources/**",
            ],
            dependencies: []
        ),
        .target(
            name: "MacAppTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "io.tuist.MacApp.appTests",
            infoPlist: .default,
            sources: "MacApp/Tests/**",
            dependencies: [
                .target(name: "MacApp"),
            ]
        ),
        .target(
            name: "VisionApp",
            destinations: .visionOS,
            product: .app,
            bundleId: "io.tuist.VisionApp",
            infoPlist: .default,
            sources: [
                "VisionApp/Sources/**",
            ],
            dependencies: []
        ),
        .target(
            name: "VisionAppTests",
            destinations: .visionOS,
            product: .unitTests,
            bundleId: "io.tuist.VisionApp.appTests",
            infoPlist: .default,
            sources: "VisionApp/Tests/**",
            dependencies: [
                .target(name: "VisionApp"),
            ]
        ),
        .target(
            name: "TVApp",
            destinations: .tvOS,
            product: .app,
            bundleId: "io.tuist.TVApp",
            infoPlist: .default,
            sources: [
                "TVApp/Sources/**",
            ],
            dependencies: []
        ),
        .target(
            name: "TVAppTests",
            destinations: .tvOS,
            product: .unitTests,
            bundleId: "io.tuist.TVApp.appTests",
            infoPlist: .default,
            sources: "TVApp/Tests/**",
            dependencies: [
                .target(name: "TVApp"),
            ]
        ),
        .target(
            name: "TVAppUITests",
            destinations: .tvOS,
            product: .uiTests,
            bundleId: "io.tuist.TVApp.appUITests",
            infoPlist: .default,
            sources: "TVApp/UITests/**",
            dependencies: [
                .target(name: "TVApp"),
            ]
        ),
    ]
)
