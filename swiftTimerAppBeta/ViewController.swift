//
//  ViewController.swift
//  swiftTimerAppBeta
//
//  Created by Siddharth Srivastava on 29/08/14.
//  Copyright (c) 2014 Siddharth Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.startButton.layer.cornerRadius = 5.0
        self.stopButton.layer.cornerRadius = 5.0
    }
    @IBAction func didPressStartButton(sender: AnyObject) {
        println("The start button was pressed ")
    }
}

