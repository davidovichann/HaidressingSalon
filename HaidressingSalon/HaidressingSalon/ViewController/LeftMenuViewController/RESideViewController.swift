//
//  RESideViewController.swift
//  HaidressingSalon
//
//  Created by AdminLWO on 19.01.17.
//  Copyright © 2017 ad. All rights reserved.
//

import UIKit
import RESideMenu

class RESideViewController: RESideMenu {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func awakeFromNib() -> Void{
        contentViewController = storyboard?.instantiateViewController(withIdentifier: "contentVC") as! ContentViewController
        leftMenuViewController = storyboard?.instantiateViewController(withIdentifier: "leftVC") as! LeftViewController
    }
}
