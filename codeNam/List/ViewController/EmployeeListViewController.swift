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

    let tableViewCellId: String = "ListTableViewCell"
    let nibNameString: String = "ListTableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = EmployeeListViewModel()
        viewModel?.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: nibNameString, bundle: nil), forCellReuseIdentifier: tableViewCellId)
    }
}

extension EmployeeListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel?.getEmployeeData()// move to another page
    }
}

extension EmployeeListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeArray?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellId, for: indexPath) as! ListTableViewCell
        cell.nameLabel?.text = self.employeeArray?[indexPath.row].name
        if let image = self.employeeArray?[indexPath.row].imageString {
            cell.avatarImageView?.image = UIImage(named: "\(image)")
        }
        if let age = self.employeeArray?[indexPath.row].age {
            cell.ageLabel.text = "Age: \(String(describing: age))"
        }
        return cell
    }
}

extension EmployeeListViewController: EmployeeListViewModelDelegate {
    func getData(employees: Employee?) {
        guard let employee = employees else {
            return
        }
        employeeArray = employee
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

