//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 12/07/2023.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Get started.", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full name", text: $fullname)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(32)

            Button(action: {
                print("Sign up here")
            }, label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            })
            .shadow(color: .gray.opacity(0.5), radius: 10)
            
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            })
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
