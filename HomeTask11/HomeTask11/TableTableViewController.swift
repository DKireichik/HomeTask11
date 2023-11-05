//
//  TableTableViewController.swift
//  HomeTask11
//
//  Created by Darya on 5.11.23.
//

import UIKit

class TableTableViewController: UITableViewController {
    
    let array = [ "1", "2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.isScrollEnabled = false
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }
    
    override func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let text = array[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
}
