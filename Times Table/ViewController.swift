//
//  ViewController.swift
//  Times Table
//
//  Created by AAJM van Montfort on 03/05/2019.
//  Copyright © 2019 AAJM van Montfort. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var timesSlider: UISlider!
    @IBOutlet weak var timesTable: UITableView!

    @IBAction func timesSliderChanged(_ sender: Any) {
        
        timesTable.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "resultCell")
        
        cell.textLabel?.text = String(Int(timesSlider.value * 20) * (indexPath.row + 1))
        
        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

