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
        animateItem(duration: 0.5, delay: 0, object: lab1)
        animateItem(duration: 0.5, delay: 0.2, object: lab2)
        animateItem(duration: 0.5, delay: 0.4, object: lab3)
        animateItem(duration: 0.5, delay: 0.6, object: lab4)
     
        
    }
    func animateItem(duration: Double, delay: Double, object: UIView){
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    

}

