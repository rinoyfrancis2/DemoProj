//
//  EmployeeViewHandler.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//

protocol EmployeeListViewHandlerProtocol {
    func LoadData()
}
protocol EmployeeListViewHandlerDelegate {
    func EmployeeDetails(employees: Employee)
}

import Foundation

class ListViewHandler: EmployeeListViewHandlerProtocol {
    
    let fileName = "Emp"
    
    var delegate: EmployeeListViewHandlerDelegate?
    
    init() {
    }
    
    func LoadData() {
        // write code for getting the data for the tableview
        JsonReader.readJSONFromFile(fileName: fileName) { data in
            delegate?.EmployeeDetails(employees: EmployeeElement.encordData(dataObject: data))
        }
    }
}
