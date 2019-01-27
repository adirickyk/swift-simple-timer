//
//  ViewController.swift
//  SimpleTimer
//
//  Created by Black Vanilla on 27/01/19.
//  Copyright © 2019 Black Vanilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var tick : Int = 60
    
    @IBOutlet weak var tickLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func decreaseTick() {
        if tick > 0 {
            tick -= 1
            tickLabel.text = String(tick)
        } else {
            timer.invalidate()
        }
    }

    @IBAction func playDidPress(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTick), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseDidPress(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func minusDidPress(_ sender: Any) {
        tick -= 10
        tickLabel.text = String(tick)
    }
    
    @IBAction func resetDidPress(_ sender: Any) {
        tick = 60
        tickLabel.text = String(tick)
    }
    
    @IBAction func plusDidPress(_ sender: Any) {
        tick += 10
        tickLabel.text = String(tick)
    }
}

