//
//  StartQuestionViewController.swift
//  Formelsammlung
//
//  Created by Nguyen Anh Nguyen on 11.09.22.
//

import UIKit

class StartQuestionViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton! {
        didSet  {
            startButton.layer.cornerRadius = startButton.frame.height/2
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func startPressed(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "QuestionController") as? QuestionController
        else{
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
