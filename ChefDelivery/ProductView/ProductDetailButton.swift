//
//  ProductDetailButton.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import SwiftUI

struct ProductDetailButton: View {
    var onButtonPress: () -> Void
    
    var body: some View {
        Button {
            onButtonPress()
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Enviar Pedido")
                
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
        }
    }
}
