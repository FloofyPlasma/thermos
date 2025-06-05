import SwiftCrossUI
import DefaultBackend

struct LoginView: View {
    @State var provider = "bsky.app"
        @State var username = ""
        @State var password = ""

        var body: some View {
            VStack(spacing: 16) {
                // Top bar
                HStack {
                    Spacer()
                        Text("Login")
                        .bold()
                        Spacer()
                        Button("Log in") {

                        }
                }

                // Provider
                VStack(spacing: 12) {
                    HStack() {
                        Text("Provider")
                            .bold()
                            TextField(text: $provider)
                    }

                    Text("Account Info")
                        .font(Font.system(size: 24))

                        HStack() {
                            Text("Username")
                                .bold()
                                TextField(text: $username)
                        }

                    HStack() {
                        Text("Password")
                            .bold()
                            TextField(text: $password)
                    }
                }
            }
            Spacer()
        }
}
