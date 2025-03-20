//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Josaphat Campos Pereira on 20/03/25.
//

import Foundation
import Alamofire

enum RequestError: Error {
    case invalidURL
    case clientError
    case serverError
    case unknown
    case errorRequest(errror: String)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError>{
        guard let url = URL(string: "https://private-0ee1801-josaphatcampos.apiary-mock.com/stores") else {return .failure(.invalidURL)}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObjects = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storesObjects)
    }
    
    func confirmOrder(product: ProductType) async throws -> Result<[String: Any]?, RequestError> {
        guard let url = URL(string: "https://private-0ee1801-josaphatcampos.apiary-mock.com/stores") else {return .failure(.invalidURL)}
        
        let encodedData = try JSONEncoder().encode(product)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = encodedData
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObjects: [String: Any]? = try JSONSerialization.jsonObject(with: data) as? [String: Any]
        
        return .success(storesObjects)
        
    }
    
    func fetchDataWithAlamofire(completeion: @escaping ([StoreType]?, Error?) -> Void){
        AF.request("https://private-0ee1801-josaphatcampos.apiary-mock.com/stores").responseDecodable(of:[StoreType].self) { response in
            switch response.result {
            case .success(let stores):
                completeion(stores, nil)
            default: break
            }
        }
    }
}

// MARK: exemple
//        URLSession.shared.dataTask(with: url){ data, _, error in
//            if let error = error {
//                print("Error: \(error)")
//                return
//            }
//
//            guard let data = data else {
//                print("No data returned")
//                return
//            }
//
//            do {
//                let storeObjects = try JSONDecoder().decode([StoreType].self, from: data)
//
//                print(storeObjects)
//
//            }catch {
//                print(error.localizedDescription)
//            }
//
//        }.resume()
