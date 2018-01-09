//
//  PatientsTableViewCell.swift
//  iCare
//
//  Created by Appreciate on 22/12/2017.
//  Copyright © 2017 be.appreciate. All rights reserved.
//

import UIKit

class PatientsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var namesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
