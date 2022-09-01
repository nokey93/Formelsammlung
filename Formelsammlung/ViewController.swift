//
//  ViewController.swift
//  Formelsammlung
//
//  Created by Nguyen Anh Nguyen on 23.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var matheImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        
        matheImageView.image = #imageLiteral(resourceName: "Mittelsenkrechte")
    }
}
 
