import Foundation
import SwiftUI

struct Login: View {
    @State private var textFieldData = ""
    @State var username: String = ""
    @State var password: String = ""
    var isDisabled: Bool {
        if (username.isEmpty || password.isEmpty) {
            return true
        } else {
            return false
        }
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                VStack(spacing: 20) {
                    Button(action:{
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(isDisabled ? Color.gray : Color.blue)
                            .cornerRadius(10)
                    }
                    .disabled(isDisabled)

                    Button(action:{
                        username = ""
                        password = ""
                    }) {
                        Text("Cancella")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
                .padding(.top, 20)
            }
        }
    }
}

#Preview {
    Login()
}
