//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: - atributes
    private var service = HomeService()
    @State private var stores: [StoreType] = []
    @State private var isLoading: Bool = true
    
    // MARK: - view
    var body: some View {
        NavigationView {
            VStack {
                if  isLoading{
                    ProgressView()
                }else{
                    NavigationBar()
                        .padding(.horizontal, 15)
                    ScrollView() {
                        VStack(spacing:20) {
                            OrderTypeGridView()
                            CarouselTabView()
                            StoreView(stores: stores)
                        }
                    }
                }
            }
        }.onAppear{
            Task {
                await getStore()
            }
//            getStoresWithAlamofire()
        }
    }
    
    // MARK: - methods
    
    func getStore() async{
        do{
            let result = try await service.fetchData()
            
            switch result {
            case .success(let data):
                self.stores = data
                isLoading = false
            case .failure(let error):
                isLoading = false
                print(error.localizedDescription)
            }
            
        }catch {
            print(error.localizedDescription)
            isLoading = false
        }
    }
    
    func getStoresWithAlamofire(){
        service.fetchDataWithAlamofire { stores, error  in
            print(stores)
        }
    }
    
}

#Preview {
    ContentView()
}
