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
    @IBOutlet weak var timeLabel: UILabel!
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.startButton.layer.cornerRadius = 5.0
        self.stopButton.layer.cornerRadius = 5.0
    }
    
    @IBAction func didPressStartButton(sender: AnyObject) {
        self.timeLabel.text = "Running!"
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTimeLabel", userInfo: NSDate(), repeats: true)
        self.startButton.hidden = true
        self.stopButton.hidden = false
    }
    
    @IBAction func didPressStopButton(sender: AnyObject) {
        self.timer.invalidate()
        self.stopButton.hidden = true
        self.startButton.hidden = false
    }
    
    func updateTimeLabel() {
        var elapsed = -(self.timer.userInfo as NSDate).timeIntervalSinceNow;
        if elapsed < 60 {
            self.timeLabel.text = String(format: "%.0f", elapsed)
        } else {
            self.timeLabel.text = String(format: "%.0f:%.2f", elapsed / 60, elapsed % 60)
        }
    }
}

