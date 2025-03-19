//
//  StoreItemVIew.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct StoreItemVIew: View {
    
    let store:StoreType
    
    var body: some View {
        HStack{
            Image(store.logoImage)
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
                
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemVIew(store: storesMock[0])
}
