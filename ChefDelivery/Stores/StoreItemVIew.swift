//
//  StoreItemVIew.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct StoreItemVIew: View {
    
    let store:OrderType
    
    var body: some View {
        HStack{
            Image(store.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(store.name)
                    .font(.subheadline)
                Text("Store Address")
                    .font(.caption)
                    .foregroundColor(Color(cgColor: CGColor(gray: 0.35, alpha: 1)))
            }
            Spacer()
                
        }.onTapGesture {
            print("Clicou \(store.name)")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemVIew(store: OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"))
}
