//
//  ContentView.swift
//  MVVMExample
//
//  Created by Arturo Calvo on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ProductListViewModel(webService: WebService())
    
    var body: some View {
        List(vm.products) { product in
            Text(product.title)
        }.task {
            await vm.populateProducts()
        }
    }
}

#Preview {
    ContentView()
}
