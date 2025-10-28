import Foundation
import SwiftUI

struct Registration: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""

    var isDisabled: Bool {
        name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty || password != confirmPassword
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Image(systemName: "person.fill")
                    .font(.system(size: 50, weight: .bold))
                    .padding(.top, 40)
                
                Text("Registrazione")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)

                VStack(spacing: 20) {
                    TextField("Nome", text: $name)
                        .font(.title2)
                        .padding()
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)

                    TextField("Email", text: $email)
                        .font(.title2)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
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

                    SecureField("Conferma Password", text: $confirmPassword)
                        .font(.title2)
                        .padding()
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)

                    if password != confirmPassword && !confirmPassword.isEmpty {
                        Text("Le password non coincidono")
                            .foregroundColor(.red)
                            .padding(.horizontal)
                    }

                    VStack(spacing: 15) {
                        Button(action: {
                        }) {
                            Text("Registrati")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(isDisabled ? Color.gray : Color.blue)
                                .cornerRadius(10)
                        }
                        .disabled(isDisabled)

                        Button(action: {
                            name = ""
                            email = ""
                            password = ""
                            confirmPassword = ""
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
    Registration()
}
