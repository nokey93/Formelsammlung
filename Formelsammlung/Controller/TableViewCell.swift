//
//  ViewController.swift
//  Formelsammlung
//
//  Created by Nguyen Anh Nguyen on 23.08.22.
//

import UIKit

class ViewController: UIViewController {

    var name = ["Allgemeines Dreieck", "Gleichschenkliges Dreieck", "Gleichschenkliges rechtwinkliges Dreieck", "Gleichseitiges Dreieck", "Höhe", "Höhensatz", "Kathetensatz", "Kongruenzsätze 1", "Kongruenzsätze 2", "Mittelsenkrechte", "Pythagoras", "Rechtwinkliges Dreieck", "Seitenhalbierende", "Strahlensatz", "Winkel an parallelen Geraden", "Winkel- und Seitenbeziehungen", "Winkel", "Winkelhalbierende"]
    
    @IBOutlet weak var formelTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the        tableView.dataSource = self
        
        // delegation of tasks (or drag in Storyboard)
    
        formelTableView.delegate = self
        formelTableView.dataSource = self

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        
        cell?.nameLabel.text = name[indexPath.row]
        
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
            vc.img = UIImage(named: name[indexPath.row])!
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
