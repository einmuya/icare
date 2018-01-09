//
//  PatientsViewController.swift
//  iCare
//
//  Created by Appreciate on 22/12/2017.
//  Copyright © 2017 be.appreciate. All rights reserved.
//

import UIKit

class PatientsViewController: UIViewController {

    var patient = ["John Doe", "Jane Due", "The Rock", "Elon Musk", "Peter Thiel"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension PatientsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patient.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientsCell", for: indexPath) as! PatientsTableViewCell
        
        let feed = patient[indexPath.row]
        cell.namesLabel.text = feed
        return cell
    }
}
