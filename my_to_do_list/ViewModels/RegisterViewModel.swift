//
//  RegisterViewModel.swift
//  my_to_do_list
//
//  Created by Shehani Hansika on 23.05.24.
//

import Foundation

class RegisterViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""

    init (){}
    
    func register() {
        guard validate() else {
            return
        }
    }
    
    private func validate () -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
