//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(order: OrderType(id: 1, name: "dssd", image: "barbecue-banner")).padding()
}
