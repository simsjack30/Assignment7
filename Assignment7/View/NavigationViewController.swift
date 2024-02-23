//
//  NavigationViewController.swift
//  Assignment7
//
//  Created by John Sims on 2/22/24.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    var selectedPerson: String?
    var selectedDate: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "\(selectedPerson ?? "Unknown Person") - \(selectedDate ?? "Unknown Date")"
    }
}
