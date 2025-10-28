import Foundation
import SwiftUI

struct Login: View {
    @State var username: String = ""
    @State var password: String = ""

    var isDisabled: Bool {
        username.isEmpty || password.isEmpty
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Image(systemName: "person.fill")
                    .font(.system(size: 50, weight: .bold))
                    .padding(.top, 40)
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                    

                VStack(spacing: 20) {
                    TextField("Username", text: $username)
                        .font(.title2)
                        .padding()
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)

                    SecureField("Password", text: $password)
                        .font(.title2)
                        .padding()
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)

                    VStack(spacing: 15) {
                        Button(action: {
                            // Logica login
                        }) {
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(isDisabled ? Color.gray : Color.blue)
                                .cornerRadius(10)
                        }
                        .disabled(isDisabled)

                        Button(action: {
                            username = ""
                            password = ""
                        }) {
                            Text("Cancella")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color.red)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    Login()
}
