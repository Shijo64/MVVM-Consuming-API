//
//  MVExampleApp.swift
//  MVExample
//
//  Created by Arturo Calvo on 24/09/24.
//

import SwiftUI

@main
struct MVExampleApp: App {
    
    @StateObject private var storeModel = StoreModel(webService: WebService())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
