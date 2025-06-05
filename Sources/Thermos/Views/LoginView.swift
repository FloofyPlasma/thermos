import DefaultBackend
import SwiftCrossUI

struct LoginView: View {
  @State var provider = "bsky.app"
  @State var username = ""
  @State var password = ""

  var body: some View {
//    HStack {
//      Spacer()
      
      VStack(alignment:.center, spacing: 24) {
        // Top bar
        HStack {
          Spacer()
          Text("Login")
            .bold()
          Spacer()
        }
        
        // Provider
        VStack(alignment: .center, spacing: 20) {
          HStack(spacing: 8) {
            Text("Provider")
              .font(Font.system(size: 18))
              .padding(.leading)
              .padding(.trailing)
            TextField("Enter provider", text: $provider)
              .padding(.trailing)
          }
          
          Text("Account Info")
            .font(Font.system(size: 18))
            .bold()
            .padding(.top, 10)
          
          HStack(spacing: 8) {
            Text("Username")
              .font(Font.system(size: 18))
              .padding(.leading)
              .padding(.trailing)
            TextField(text: $username)
              .padding(.trailing)
          }
          
          HStack(spacing: 8) {
            Text("Password")
              .font(Font.system(size: 18))
              .padding(.leading)
              .padding(.trailing)
            TextField(text: $password)
              .padding(.trailing)
          }
        }
        
        Button("Log in") {
          
        }
        .padding(.top)
      }
//      Spacer()
//    }
  }
}
