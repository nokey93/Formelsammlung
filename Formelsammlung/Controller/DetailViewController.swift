//
//  DetailViewController.swift
//  Formelsammlung
//
//  Created by Nguyen Anh Nguyen on 08.09.22.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var imaMatheView: UIImageView!
    
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        imaMatheView.image = img
        // Do an additional setup after loading the view.
    }
    


}
