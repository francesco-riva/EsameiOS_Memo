//
//  Login.swift
//  EsameiOS_Memo
//
//  Created by d3 on 28/10/25.
//

import Foundation
import SwiftUI

struct Login: View {
    @State private var textFieldData = ""
    @State var username: String = ""
    @State var password: String = ""
    var isDisabled: Bool {
        if (username.isEmpty || password.isEmpty) {
            return true }
        else {
            return false }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login").font(.largeTitle).fontWeight(.bold)
        }.padding()
        
        Group {
            TextField("Username", text: $username ).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Password", text: $password ).textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
        Group {
            VStack(spacing: 20) {
                Button(action:{
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50, alignment: .center) }
                .disabled(isDisabled)
                .background(isDisabled ? Color.gray : Color.blue)
                .cornerRadius(10)
                
                Button(action:{
                    username = ""
                    password = ""
                }) {
                    Text("Cancella")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    .frame(width: 200, height: 50, alignment: .center )  }
                .disabled(isDisabled)
                .background(isDisabled ? Color.clear : Color.red)
                .cornerRadius(10)
            }
        }
    }
}



#Preview {
    Login()
}

