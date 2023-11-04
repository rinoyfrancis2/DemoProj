//
//  EmployeeListViewController.swift
//  codeNam
//
//  Created by Rinoy Francis on 01/11/2023.
//

import UIKit

class EmployeeListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel : EmployeeListViewModel?
    var employeeArray: Employee?
    
    let tableViewCellId: String = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = EmployeeListViewModel()
        viewModel?.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewCellId)
    }
    
    
}

extension EmployeeListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel?.getEmployeeData()// this function for api call
    }
}

extension EmployeeListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellId, for: indexPath)
        cell.textLabel?.text = "rinoy"
        cell.imageView?.image = UIImage(named: "Rinoy")
        return cell
    }
    
}

extension EmployeeListViewController: EmployeeListViewModelProtocol {
    func getData(employees: Employee?) {
        //after getting the data ned to set in an array
        //we have to reload the table view
        guard let employee = employees else {
            return
        }
        
        employeeArray = employee
//        self.tableView.reloadData()
        
    }
    
    func processedData(info: EmployeeElement?) {
        guard let employee = info else {
            return
        }
        print(employee)
        // here when we got the data pass that with new screen for detail page
    }
    
}

