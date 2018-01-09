//
//  LaunchViewController.swift
//  iCare
//
//  Created by Appreciate on 22/12/2017.
//  Copyright © 2017 be.appreciate. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    //
    @IBOutlet weak var launchButton: UIButton! {
        didSet {
            launchButton.roundBorder()
            launchButton.addTarget(self, action: #selector(launchApp), for: .touchUpInside)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func launchApp() {
        let uiTabbar: UITabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBar") as! UITabBarController
        
        uiTabbar.selectedIndex = 1
        self.present(uiTabbar, animated: false, completion: nil)
    }
}
