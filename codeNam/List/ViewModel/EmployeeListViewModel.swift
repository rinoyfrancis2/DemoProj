//
//  EmployeeListViewModel.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//
protocol EmployeeListViewModelProtocol {
    func getData(employees: Employee?)
    func processedData(info: EmployeeElement?)
}

protocol EmployeeListViewModelFuncProtocol {
    func getEmployeeData()
}

import Foundation

class EmployeeListViewModel: EmployeeListViewModelFuncProtocol {
    
    public var delegate: EmployeeListViewModelProtocol?
    public var dataHandler: ListViewHandler?
    
    init(delegate: EmployeeListViewModelProtocol? = nil, dataHandler: ListViewHandler? = nil) {
        self.delegate = delegate
        self.dataHandler = dataHandler
        //here we need to call the function for retrive the data from json
    }
    
    public func getEmployeeData() { // single emplee info
        // handler with delegate pass
        // when ever we got the data we pass through this delegate to
        delegate?.getData(employees: []) // this is the item for communication with view and viewmodel onl
        
        //then we can
    }
}
