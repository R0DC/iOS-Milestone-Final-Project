//
//  ViewController.swift
//  Final_Project
//
//  Created by Rodion on 26.09.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var THE_BUTTON_lbl: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func THE_BUTTON(_ sender: Any) {
        let taunts:[String] = ["Haha, missed!","Are you even trying bro","Not there, here!","Just take the L man"]
        let rand_num = Int.random(in: 1...4)
        if (rand_num == 1) {
            THE_BUTTON.setTitle(taunts[1])
        }
        else if (rand_num == 2) {
            THE_BUTTON.setTitle(taunts[2])
        }
        
        else if (rand_num == 3) {
            THE_BUTTON.setTitle(taunts[3])
        }
        
        else if (rand_num == 4) {
            THE_BUTTON.setTitle(taunts[4])
        }
    }
    
}

