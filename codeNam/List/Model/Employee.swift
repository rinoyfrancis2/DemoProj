//
//  Employee.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//

import UIKit

import Foundation

// MARK: - Employee

struct EmployeeElement: Codable {
    let name: String
    let age: Int
    let imageString: String
    
    init(name: String?, age: Int?, imageString: String?) {
        self.name = name ?? ""
        self.age = age ?? 0
        self.imageString = imageString ?? ""
    }
    
    static func encordData(dataObject: Data) -> Employee {
        do {
            let result = try JSONDecoder().decode(Employee.self, from: dataObject)
            return result
        } catch let error {
            print("Failed to Decode Object", error)
            return []
        }
    }
}

typealias Employee = [EmployeeElement]



