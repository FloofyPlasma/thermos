import SwiftCrossUI
import DefaultBackend

@main
struct ThermosApp: App {
    var body: some Scene {
        WindowGroup("Thermos") {
            LoginView()
        }
        .defaultSize(width: 300, height: 600)
    }
}
