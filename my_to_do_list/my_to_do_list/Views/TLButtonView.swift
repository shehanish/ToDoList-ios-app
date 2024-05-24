//
//  TLButton.swift
//  my_to_do_list
//
//  Created by Shehani Hansika on 24.05.24.
//

import SwiftUI

struct TLButtonView: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                
            }
        }
        
    }
    
}
    
    struct TLButtonView_Previews: PreviewProvider {
        static var previews: some View {
            TLButtonView(title: "Log In", background: .blue) {
                //Action
            }
        }
    }

