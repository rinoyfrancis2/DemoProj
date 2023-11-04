//
//  JsonReader.swift
//  codeNam
//
//  Created by Rinoy Francis on 04/11/2023.
//

import Foundation

class JsonReader {
    // make this one generic as results
    // data shoukd be return
    
    static func readJSONFromFile(fileName: String, handler: (Data)->Void) {
        let path = Bundle.main.path(forResource: fileName, ofType: "json")
        let url = URL(fileURLWithPath: path!)
        let sportsData = try? Data(contentsOf: url)
        
        if let data = sportsData {
            handler(data)
        }
    }
}
