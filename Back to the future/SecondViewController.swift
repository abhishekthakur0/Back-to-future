//
//  SecondViewController.swift
//  Back to the future
//
//  Created by Abhishek Thakur on 25/04/19.
//  Copyright © 2019 Abhishek Thakur. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    
    @IBAction func ButtonClicked(_ sender: Any) {
            let utils = Utilities()
            let year = utils.GetRandomYear()
            lab1.text = utils.GetLeterAtIndex(str: year, location: 0)
            lab2.text = utils.GetLeterAtIndex(str: year, location: 1)
            lab3.text = utils.GetLeterAtIndex(str: year, location: 2)
            lab4.text = utils.GetLeterAtIndex(str: year, location: 3)
            
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    

}

