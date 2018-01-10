//
//  FollowUpTableViewCell.swift
//  iCare
//
//  Created by Edward Muya on 22/12/2017.
//  Copyright © 2017 com.crafted. All rights reserved.
//

import UIKit

class FollowUpTableViewCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var nameTagLabel: UILabel!
    @IBOutlet weak var casesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
