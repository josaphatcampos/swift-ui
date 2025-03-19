//
//  Double+.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 19/03/25.
//

import Foundation

extension Double {
    func formatCurrency() -> String {
        return String(format: "%.2f", self).replacingOccurrences(of: ".", with: ",")
    }
}
