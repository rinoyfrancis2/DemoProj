//
//  JsonReader.swift
//  codeNam
//
//  Created by Rinoy Francis on 04/11/2023.
//

import Foundation

class JsonReader {
    
    static func readJSONFromFile(fileName: String, handler: (Data)->Void) {
        let path = Bundle.main.path(forResource: fileName, ofType: "json")
        let url = URL(fileURLWithPath: path!)
        let actualData = try? Data(contentsOf: url)
        
        if let data = actualData {
            handler(data)
        }
    }
}
