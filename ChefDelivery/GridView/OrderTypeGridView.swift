//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout:[GridItem]{
        return Array(repeating: GridItem(.flexible(minimum: 0), spacing: 10), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows:gridLayout, spacing: 15) {
            ForEach(ordersMock) { order in
                OrderTypeView(orderType: order)
            }
        }.frame(height: 200)
            .padding(.horizontal, 15)
            .padding(.top, 15)
    }
}

#Preview("", traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
}
