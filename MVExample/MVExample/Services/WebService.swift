//
//  WebService.swift
//  MVExample
//
//  Created by Arturo Calvo on 24/09/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidRequest
}

class WebService {
    
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidRequest
        }
        
        let products = try JSONDecoder().decode([Product].self, from: data)
        
        return products
    }
}
