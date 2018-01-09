//
//  TicketViewController.swift
//  iCare
//
//  Created by Appreciate on 22/12/2017.
//  Copyright © 2017 be.appreciate. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
extension TicketViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TicketCell", for: indexPath) as! TicketTableViewCell
        
        cell.bookTicketButton.addTarget(self, action: #selector(bookTicketButtonTapped), for: .touchUpInside)
        return cell
    }
    
    func bookTicketButtonTapped(_ sender: UIButton) {
        let patientDetails = self.storyboard?.instantiateViewController(withIdentifier: "PatientDetailsViewController") as! PatientDetailsViewController
        
        self.navigationController?.pushViewController(patientDetails, animated: true)
    }
}
extension TicketViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.selectionStyle = .none
        
    }
}
