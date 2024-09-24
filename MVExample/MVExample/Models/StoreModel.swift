//
//  StoreModel.swift
//  MVExample
//
//  Created by Arturo Calvo on 24/09/24.
//
import Foundation

@MainActor
class StoreModel: ObservableObject {
    
    let webService : WebService
    @Published var products: [Product] = []
    
    init(webService: WebService) {
        self.webService = webService
    }
    
    func populateProducts() async throws -> Void {
        products = try await webService.getProducts()
        
    }
}
