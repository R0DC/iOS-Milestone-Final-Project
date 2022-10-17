//
//  ViewController.swift
//  Final_Project
//
//  Created by Rodion on 26.09.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func THE_BUTTON(button: UIButton) {
        
        // Button location randomizer //
        
        // Find the button's width and height
        let buttonWidth = button.frame.width
        let buttonHeight = button.frame.height
        
        // Find the width and height of the enclosing
        let viewWidth = button.superview!.bounds.width
        let viewHeight = button.superview!.bounds.height

        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight

        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))

        // Offset the button's center by the random offsets.
        button.center.x = xoffset + buttonWidth / 2
        button.center.y = yoffset + buttonHeight / 2
        
        // Text randomizer
        let taunts = ["Haha, missed!","Are you even trying bro","Not there, here!","Just take the L man"]
        let randomTaunt = taunts.randomElement() // Assign random text to label
        button.setTitle(randomTaunt, for: .normal) // Change label text once button is pressed
    }
    
}

