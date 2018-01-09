//
//  PatientDetailsViewController.swift
//  iCare
//
//  Created by Appreciate on 22/12/2017.
//  Copyright © 2017 be.appreciate. All rights reserved.
//

import UIKit

class PatientDetailsViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var namesTextField: BorderedTextField!
    @IBOutlet weak var ageTextField: BorderedTextField!
    @IBOutlet weak var locationTextField: BorderedTextField!
    @IBOutlet weak var caseTextField: BorderedTextField!
    @IBOutlet weak var priorityTextField: BorderedTextField!
    @IBOutlet weak var confirmButton: UIButton! {
        didSet {
            confirmButton.roundBorder()
            confirmButton.addTarget(self, action: #selector(confirmButtonTapped), for: .touchUpInside)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func confirmButtonTapped(_ sender: UIButton) {
        
    }
}
