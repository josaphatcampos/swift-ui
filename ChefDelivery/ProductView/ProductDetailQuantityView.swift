//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @Binding var quantity: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack(spacing: 16) {
                Button {
                    if quantity == 1 { return }
                    quantity -= 1
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(quantity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    quantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }

        }
    }
}

#Preview {
    ProductDetailQuantityView(quantity: .constant(1))
}
