//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMock:[OrderType] = [
        OrderType(id: 1, name: "barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "brazilian meal", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "pokes", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { order in
                CarouselItemView(order: order)
            }
            
        }.frame(height:180)
            .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
