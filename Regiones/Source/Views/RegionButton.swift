//
//  RegionButton.swift
//  Regiones
//
//  Created by Raul Quispe on 12/19/17.
//  Copyright © 2017 QuimaDevelopers. All rights reserved.
//

import UIKit

class RegionButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var UID:String = ""
    func draw(uid:String,region:UIImage)  {
        self.UID = uid
        self.layer.masksToBounds = true
        self.setImage(region, for: .normal)
    }
}
