//
//  ViewController.swift
//  Pedal
//
//  Created by John Zulewski on 11/14/20.
//

import UIKit

//Initial Commit Test!

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var spots = ["#Reading: Read 5 chapters today", "#Running", "#Building", "#Learning"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spots.count
    }

    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.nameLabel?.text = spots[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 275
    }

}



