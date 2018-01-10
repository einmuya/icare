//
//  TicketTableViewCell.swift
//  iCare
//
//  Created by Edward Muya on 22/12/2017.
//  Copyright © 2017 com.crafted. All rights reserved.
//

import UIKit

class TicketTableViewCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var ticketNumberLabel: UILabel!
    @IBOutlet weak var bookTicketButton: UIButton! {
        didSet {
            bookTicketButton.roundBorder()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
