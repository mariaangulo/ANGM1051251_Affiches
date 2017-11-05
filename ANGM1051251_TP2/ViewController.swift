//
//  ViewController.swift
//  ANGM1051251_TP2
//
//  Created by Maria Angulo on 17-11-02.
//  Copyright © 2017 Maria Angulo. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.

        //_ = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: (Selector("tournerLaPage")), userInfo: nil, repeats: false)

    }
    func tournerLaPage() {
        performSegue(withIdentifier: "ListeAffiches", sender:self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

