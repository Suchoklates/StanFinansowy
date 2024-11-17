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
    
    var dataBase : DataFrame
    init() {
        dataBase = initDataBase(csvDataBaseName:"StanFinansowy_RawData")
    }
    
    var dataGroupedByYear = dataBase.grouped(by: "Rok")
    
}
