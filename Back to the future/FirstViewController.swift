//
//  FirstViewController.swift
//  Back to the future
//
//  Created by Abhishek Thakur on 25/04/19.
//  Copyright © 2019 Abhishek Thakur. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timelabel: UILabel!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let year = Utilities().GetCurrentYear()
        label1.text = Utilities().GetLeterAtIndex(str: year, location: 0)
        label2.text = Utilities().GetLeterAtIndex(str: year, location: 1)
        label3.text = Utilities().GetLeterAtIndex(str: year, location: 2)
        label4.text = Utilities().GetLeterAtIndex(str: year, location: 3)
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)

    }

    @objc func Tick() {
        timelabel.text = Utilities().GetCurrentTime()
    }

}

