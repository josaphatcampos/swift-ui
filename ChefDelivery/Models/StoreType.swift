//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import Foundation

struct StoreType: Identifiable, Decodable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case logoImage = "logo_image"
        case headerImage = "header_image"
        case location
        case stars
        case products
    }
}
