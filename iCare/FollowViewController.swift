//
//  FollowViewController.swift
//  iCare
//
//  Created by Appreciate on 22/12/2017.
//  Copyright © 2017 be.appreciate. All rights reserved.
//

import UIKit

class FollowViewController: UIViewController {

    var follow = ["John Doe", "Jane Due", "The Rock", "Elon Musk", "Peter Thiel"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension FollowViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return follow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowCell", for: indexPath) as! FollowUpTableViewCell
    
        let feed = follow[indexPath.row]
        
        let typeCharacter = feed
        let firstChar = typeCharacter[typeCharacter.startIndex]
        cell.nameTagLabel.text = "\(firstChar)"
        cell.nameTagLabel.circle()
        
        cell.casesLabel.text = feed
        
        return cell
    }
}
