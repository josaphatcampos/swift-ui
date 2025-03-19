//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    @State private var quantity: Int = 1
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantityView(quantity: $quantity)
            Spacer()
            ProductDetailButton()

        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}


