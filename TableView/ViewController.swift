//
//  ViewController.swift
//  TableView
//
//  Created by R93 on 02/02/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    
    @IBOutlet weak var TableViewOutlet: UITableView!
    
    var name2 = ["Rahul","Meet","Rahul2","Meet2","Home","Dad"]
    var numbers2  = ["987456321","987456311","999456321","987462421","987456987","9879882953"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        
        cell.name.text = name2[indexPath.row]
        cell.numbers.text = numbers2[indexPath.row]
       return cell
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
  
}

