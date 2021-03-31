//
//  PeriodTableViewController.swift
//  PickADriver
//
//  Created by James, Alice - PGA on 3/31/21.
//

import UIKit

class PeriodTableViewController: UITableViewController {

    var selectedPeriod = 0
    var names = [["Alice", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["Scott", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["Kelly", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["Ryan", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["Kris", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["DJ", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["Hilary", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"], ["Bethany", "Felix", "Steven", "Elvis", "Sam", "Nathan", "Toren", "George", "Aiden"]]
    var selectedNames: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPeriod = indexPath.row + 1
        selectedNames = names[indexPath.row]
        performSegue(withIdentifier: "PeriodToNames", sender: nil)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let namesTableVC = segue.destination as? NamesTableViewController {
            namesTableVC.names = selectedNames
            namesTableVC.period = selectedPeriod
        }
    
    }
    

}
