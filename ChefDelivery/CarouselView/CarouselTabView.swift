//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex: Int = 1
    
    let ordersMock:[OrderType] = [
        OrderType(id: 1, name: "barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "brazilian meal", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "pokes", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(ordersMock) { order in
                CarouselItemView(order: order)
                    .tag(order.id)
            }
            
        }
        .frame(height:180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 1)) {
                    if currentIndex > ordersMock.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
                
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
