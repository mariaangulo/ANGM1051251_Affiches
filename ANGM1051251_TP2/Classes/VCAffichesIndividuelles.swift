//
//  VCAffichesIndividuelles.swift
//  ANGM1051251_TP2
//
//  Created by Maria Angulo on 17-11-03.
//  Copyright © 2017 Maria Angulo. All rights reserved.
//

import UIKit

class VCAffichesIndividuelles: UIViewController {

    var informationsDeLAffiche =  [Array<String>]()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Salut \(informationsDeLAffiche)")
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var nomAffiche: UILabel!
    
    @IBOutlet weak var afficheImage: UIImageView!

    @IBOutlet weak var afficheTexte: UITextView!
    
    @IBAction func retour(_ sender: Any) {
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

}
