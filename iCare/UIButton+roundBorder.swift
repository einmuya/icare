//
//  UIButton+roundBorder.swift
//  iCare
//
//  Created by Edward Muya on 22/12/2017.
//  Copyright © 2017 com.crafted. All rights reserved.
//

import UIKit

extension UIButton {
    func roundBorder() {
        let height = self.frame.height
        self.layer.cornerRadius = height / 2
        self.layer.masksToBounds = true
    }
}
extension UILabel {
    func circle(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 21
    }
}
