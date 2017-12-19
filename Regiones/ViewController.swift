//
//  ViewController.swift
//  Regiones
//
//  Created by Raul Quispe on 12/19/17.
//  Copyright © 2017 QuimaDevelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.createBody()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createBody() {
        let regA = RegionButton()
        regA.draw(uid: "U00A", region: #imageLiteral(resourceName: "regionA"))
        //this a position relative from x= 0 and y = 0
        regA.frame = CGRect(x: 39, y: 92, width: 70.827, height: 70.827)


        let regB = RegionButton()
        regB.draw(uid: "U00B", region: #imageLiteral(resourceName: "regionB"))
        //this a position relative from x= 0 and y = 0
        regB.frame = CGRect(x: 61, y: 120, width: 126.293, height: 101.12)


        let regC = RegionButton()
        regC.draw(uid: "U00C", region: #imageLiteral(resourceName: "regionC"))
        //this a position relative from x= 0 and y = 0
        regC.frame = CGRect(x: 130, y: 195, width: 126.293, height: 101.12)

        self.view.addSubview(regB)
        self.view.addSubview(regA)
        self.view.addSubview(regC)


        regA.addTarget(self, action: #selector(self.checkRegion(sender:)), for: .touchUpInside)
        regB.addTarget(self, action: #selector(self.checkRegion(sender:)), for: .touchUpInside)
        regC.addTarget(self, action: #selector(self.checkRegion(sender:)), for: .touchUpInside)

    }
    @objc func checkRegion(sender:RegionButton) {
        print(sender.UID)
    }
}

