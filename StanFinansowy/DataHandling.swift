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
    initDataFrame.removeColumn("Column 6")
    
    print(initDataFrame)
    
    return initDataFrame
}


func sortDataByYear (dataFrame: DataFrame) -> RowGroupingProtocol{
    let dataGroupedByYear = dataFrame.grouped(by: "Rok")
    //    var _currentYear: Int = 2024
    
    var numberOfRows = dataGroupedByYear.counts()
    
    print(numberOfRows)
    
    return dataGroupedByYear
}
