//
//  HeaderView.swift
//  my_to_do_list
//
//  Created by Shehani Hansika on 23.05.24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    
    var body: some View {
        //Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 90)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height:350)
        .offset(y: -150)
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                    subtitle: "Subtitle",
                    angle: 10,
                   background: .blue)
    }
}

