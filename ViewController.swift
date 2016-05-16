//
//  ViewController.swift
//  Rainbow
//
//  Created by Sarju Thakkar on 4/16/16.
//  Copyright © 2016 Sarju Thakkar. All rights reserved.
//  This app goes through the color of the rainbows as you put more pressure on the screen

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // When screen touched run
        if let touch = touches.first {
            // if touched then touch equals the first touch
            let force = touch.force
            // force equals the force/pressure put on the touch
            // The values below are made by dividing the maximum force value 6.666666667 by 9
            if (force < 0.74) {
            // If force value is less than 0.74 then...
             self.imageView.backgroundColor = UIColor.whiteColor()
            // Set background color to white
            }
            else if (force > 0.75 && force < 1.50) {
            // if force value is between 0.75 and 1.50 then ...
             self.imageView.backgroundColor = UIColor.redColor()
            //Set background color to red
            }
            else if (force > 1.51 && force < 2.25) {
            // if force value is between 1.51 and 2.25 then ...
             self.imageView.backgroundColor = UIColor.orangeColor()
            //Set background color to orange
            }
            else if (force > 2.26 && force < 3.00) {
            // if force value is between 2.26 and 3.00 then ...
             self.imageView.backgroundColor = UIColor.yellowColor()
            //Set background color to yellow
            }
            else if (force > 3.01 && force < 3.75) {
            // if force value is between 3.01 and 3.75 then ...
             self.imageView.backgroundColor = UIColor.greenColor()
            //Set background color to green
            }
            else if (force > 3.76 && force < 4.50) {
            // if force value is between 3.76 and 4.50 then ...
              self.imageView.backgroundColor = UIColor.cyanColor()
            //Set background color to blue
            }
            else if (force > 4.51 && force < 5.25) {
            // if force value is between 4.51 and 5.25 then ...
             self.imageView.backgroundColor = UIColor.blueColor()
            //Set background color to indigo
            }
            else if (force > 5.26 && force < 6.00) {
            // if force value is between 5.26 and 6.00 then ...
              self.imageView.backgroundColor = UIColor.purpleColor()
            //Set background color to violet
            }
            else if (force > 6.01 && force < 6.67) {
            // if force value is between 6.01 and 6.67 then ...
              self.imageView.backgroundColor = UIColor.blackColor()
            //Set background color to black
            }
        }
    }
}




