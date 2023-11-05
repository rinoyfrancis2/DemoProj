//
//  EmployeeListViewModel.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//
protocol EmployeeListViewModelDelegate {
    func getData(employees: Employee?)
}

protocol EmployeeListViewModelFuncProtocol {
    func getEmployeeData()
}

import Foundation

class EmployeeListViewModel: EmployeeListViewModelFuncProtocol {
    
    public var delegate: EmployeeListViewModelDelegate?
    public var dataHandler: ListViewHandler?
    
    init(delegate: EmployeeListViewModelDelegate? = nil) {
        self.delegate = delegate
        self.dataHandler = ListViewHandler()
        self.dataHandler?.delegate = self
        self.dataHandler?.LoadData()
    }
    
    public func getEmployeeData() {
        // when we press that will move to another detail page
        print("hai rinoy")
    }
}

extension EmployeeListViewModel: EmployeeListViewHandlerDelegate {
    func EmployeeDetails(employees: Employee) {
        DispatchQueue.main.async {
            self.delegate?.getData(employees: employees)
        }
    }
}
