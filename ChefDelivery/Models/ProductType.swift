//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatCurrency())"
    }
}
