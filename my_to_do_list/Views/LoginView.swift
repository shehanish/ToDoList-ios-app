//
//  LoginView.swift
//  my_to_do_list
//
//  Created by Shehani Hansika on 23.05.24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Get Things Done",
                           angle: 10,
                          background: .teal)
                
                //Login Form
                
                Form{
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
        
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButtonView(title: "Log In",
                                 background: .blue)
                    {
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -60)
                
                
                //Create Account
                VStack{
                    Text ("New around here?")
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                        //Show registration
                    }
                    
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
        
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
