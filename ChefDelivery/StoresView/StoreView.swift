//
//  StoreView.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 18/03/25.
//

import SwiftUI

struct StoreView: View {
    
    let title = "Lojas"
    @State var ratingFilter = 0
    
var filteredStores: [StoreType] {
    return storesMock.filter { $0.stars >= ratingFilter }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(title)
                    .font(.headline)
                Spacer()
                Menu("Filtrar"){
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }

                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            switch(rating){
                                case 1:
                                    Text("\(rating) estrela ou mais")
                                case 5:
                                    Text("\(rating) estrelas")
                                default :
                                    Text("\(rating) estrelas ou mais")
                            }
                        }

                    }
                }
                .foregroundColor(.black)
            }
            
            VStack(alignment: .leading, spacing: 30){
                
                if filteredStores.isEmpty {
                    Text("Nenhuma loja encontrada")
                        .font(.title2)
                        .foregroundColor(Color("ColorRed"))
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    
                }
                
                ForEach(filteredStores) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemVIew(store: store)
                    }
                }
            }.foregroundColor(.black)
        }.padding(20)
    }
}

#Preview( traits: .sizeThatFitsLayout) {
    StoreView()
}
