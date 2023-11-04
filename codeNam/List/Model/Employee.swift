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
}

typealias Employee = [EmployeeElement]

