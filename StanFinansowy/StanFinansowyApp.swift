//
//  StanFinansowyApp.swift
//  StanFinansowy
//
//  Created by Kamil Kościelny on 16.11.24.
//

import SwiftUI
import Foundation
import TabularData

@main
struct StanFinansowyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    let dataHandling = DataHandling()
    var dataBase = dataHandling.initDataBase(csvDataBaseName:"StanFinansowy_RawData")
}
