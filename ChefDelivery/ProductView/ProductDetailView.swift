//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    let service = HomeService()
    
    @State private var quantity: Int = 1
    @State private var isAlert: Bool = false
    @State private var message = [:]
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantityView(quantity: $quantity)
            Spacer()
            ProductDetailButton {
               Task {
                    try! await confirmOrder()
                }
            }
        }.alert(isPresented: $isAlert) {
            Alert(title: Text("Pedido Confirmado!"))
        }
    }
    
    //MARK: methods
    func confirmOrder() async throws {
        do {
            let result = try await service.confirmOrder(product: product)
            switch result {
            case .success(let order):
                message = order ?? [:]
                isAlert =  true
            case .failure(let error):
                print("error: \(error)")
            }
        } catch {
            print("error: \(error)")
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}


