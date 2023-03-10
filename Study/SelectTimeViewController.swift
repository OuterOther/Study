//
//  SelectTimeViewController.swift
//  Study
//
//  Created by Александр on 28.02.23.
//

import UIKit

class SelectTimeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data:[Int] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeCell", for: indexPath)
        cell.textLabel?.text = String(data[indexPath.row])
        return cell
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView?.dataSource = self
            tableView?.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        Settings.shared.currentSettings.timeForGame = data[indexPath.row]
        navigationController?.popViewController(animated: true)
        print(data[indexPath.row])
    }
}

