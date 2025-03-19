//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
                .padding(.horizontal, 15)
            ScrollView() {
                VStack(spacing:20) {
                    OrderTypeGridView()
                    CarouselTabView()
                    StoreView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
