//
//  Product.swift
//  MVExample
//
//  Created by Arturo Calvo on 24/09/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
