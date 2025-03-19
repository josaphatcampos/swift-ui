//
//  StoreView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct StoreView: View {
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Lojas")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock) { store in
                    StoreItemVIew(store: store)
                    
                }
            }
        }.padding(20)
    }
}

#Preview( traits: .sizeThatFitsLayout) {
    StoreView()
}
