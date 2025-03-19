//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import SwiftUI

struct StoreDetailProductsView: View {
    let products: [ProductType]
    @State private var selectedProduct: ProductType?
    var body: some View {
        Text("Produtos")
            .font(.title2)
            .bold()
            .padding()
        
        ForEach(products){ product in
            
            Button {
                selectedProduct = product
            } label: {
                StoreDetailProductsItemView(product: product)
            }
            .sheet(item: $selectedProduct) { product in
                ProductDetailView(product: product)
            }
        }
    }
}

#Preview {
    StoreDetailProductsView(products: storesMock.first!.products)
}
