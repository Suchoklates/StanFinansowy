//
//  DataHandling.swift
//  StanFinansowy
//
//  Created by Kamil Kościelny on 16.11.24.
//

import Foundation
import TabularData

func initDataBase (csvDataBaseName: String) -> DataFrame{

    let URLtoDataBase = Bundle.main.url(forResource: csvDataBaseName,
                                        withExtension: "csv")!
    
    let csvOptions = CSVReadingOptions(
        hasHeaderRow: true ,
        floatingPointType: CSVType.float ,
        delimiter: ";"
        )

    var initDataFrame = try! DataFrame(contentsOfCSVFile: URLtoDataBase,
                                          types: ["Rok" : .integer,
                                                  "Miesiac" : .string,
                                                  "Konto" : .string,
                                                  "Nazwa" : .string,
                                                  "Kategoria" : .string,
                                                  "Wydatek" : .string] ,
                                          options: csvOptions)
        
    initDataFrame.transformColumn("Wydatek") { (wydatek: String) in wydatek.replacingOccurrences(of: ",", with: ".") } //replace "," with ".", to make float numbers possible
    initDataFrame.transformColumn("Wydatek") { (wydatek: String) in Float(wydatek) } //change data format to float
    
    print(initDataFrame)
    
    return initDataFrame
}

func sortDataBase (dataBase: DataFrame) -> DataFrame{
    
    var sortedDataBase = dataBase.sorted(by: ["Rok", "Miesiac", "Konto", "Nazwa", "Kategoria", "Wydatek"])
    
    return sortedDataBase
}
