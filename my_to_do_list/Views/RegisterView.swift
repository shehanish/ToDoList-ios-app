//
//  RegisterView.swift
//  my_to_do_list
//
//  Created by Shehani Hansika on 23.05.24.
//

import SwiftUI

struct RegisterView: View {
    
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -10,
                       background: .cyan)
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButtonView(title: "Create Account",
                             background: .green)
                {
                    //Attempt Registration
                }
                .padding()
                
            }
            .offset(y: -60)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

