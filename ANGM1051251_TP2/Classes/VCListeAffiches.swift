//
//  VCListeAffiches.swift
//  ANGM1051251_TP2
//
//  Created by Maria Angulo on 17-11-03.
//  Copyright © 2017 Maria Angulo. All rights reserved.
//

import UIKit

class VCListeAffiches: UIViewController , UICollectionViewDataSource {
  

    @IBOutlet weak var CVAffiche: UICollectionViewCell!
    var tableauDonnees = [Array<String>]()
    
    
    @IBOutlet weak var CVAffiches: UICollectionView!
    override func viewDidLoad() {

        
        super.viewDidLoad()
        //CVListeAffiches.dataSource = self
        if let path = Bundle.main.path(forResource: "lesDonnes", ofType:"plist"){
            tableauDonnees = NSArray(contentsOfFile: path) as! [Array<String>]
        }
        // Do any additional setup after loading the view, typically from a nib.
        print(tableauDonnees[2][1])
        let uneAffiche = tableauDonnees[0] as NSArray
        let nom = uneAffiche[1] as! String
        
        print("titre \(nom)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return tableauDonnees.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var celluleCourante:CVCAffiches
        
       
        celluleCourante = collectionView.dequeueReusableCell(withReuseIdentifier: "modeleAffichesCellule", for:indexPath) as! CVCAffiches
        
        
    celluleCourante.nomAffiche.text = tableauDonnees[indexPath.row][0]
        celluleCourante.afficheImage.image = UIImage(named:tableauDonnees[(indexPath as NSIndexPath).row][1])
        
 
        return celluleCourante
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selection = CVAffiches.indexPath(for: sender as! UICollectionViewCell)!.row
        print("# Exécution de la méthode: prepareForSegue pour la cellule numéro: \(selection)\n")
        let destination = segue.destination as! VCAffichesIndividuelles
        destination.informationsDeLAffiche = [tableauDonnees[selection]]
    }

}
