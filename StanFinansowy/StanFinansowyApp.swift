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
    var dataBase : DataFrame
    var dataGrouped : RowGroupingProtocol
    init() {
        dataBase = initDataBase(csvDataBaseName:"StanFinansowy_RawData")
        dataGrouped = sortDataByYear(dataFrame: dataBase)
        //print(dataGrouped)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

}
