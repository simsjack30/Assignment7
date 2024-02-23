//
//  ViewController.swift
//  Assignment7
//
//  Created by John Sims on 2/22/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dates: [PersonDate] {
        return PersonDateManager.shared.dates
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "first_cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = dates[indexPath.row].person
        content.secondaryText = dates[indexPath.row].date
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toNavigation", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigation",
           let destinationVC = segue.destination as? NavigationViewController,
           let indexPath = sender as? IndexPath {
            destinationVC.selectedPerson = dates[indexPath.row].person
            destinationVC.selectedDate = dates[indexPath.row].date
        }
    }
}

