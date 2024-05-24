//
//  my_to_do_listApp.swift
//  my_to_do_list
//
//  Created by Shehani Hansika on 15.05.24.
//

import FirebaseCore
import SwiftUI

@main
struct my_to_do_listApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
