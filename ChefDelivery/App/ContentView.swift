//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
        }.onAppear{
            fetchData()
        }
    }
    
    // MARK: - Methods
    func fetchData() {
        guard let url = URL(string: "https://private-0ee1801-josaphatcampos.apiary-mock.com/stores") else {return}
        
        URLSession.shared.dataTask(with: url){ data, _, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data returned")
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]]
                
                print(json ?? [])
                
            }catch {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}

#Preview {
    ContentView()
}
