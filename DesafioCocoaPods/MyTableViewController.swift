//
//  MyTableViewController.swift
//  DesafioCocoaPods
//
//  Created by Swift on 16/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit
import SDWebImage

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! MyTableViewCell
        
        cell.minhaImageView.sd_setImage(with: URL(string: "https://lorempixel.com/400/300/cats/" + String(indexPath.row)), completed: nil)
        
        return cell
    }


}
