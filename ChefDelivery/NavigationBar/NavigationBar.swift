//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            
            Button("R. Vergueiro, 3185") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action:{}) {
                Image(systemName: "bell.badge")
                    .foregroundColor(Color("ColorRed"))
                    .font(.title3)
            }

        }
    }
}

#Preview("", traits: .sizeThatFitsLayout) {
    NavigationBar().padding()
}
