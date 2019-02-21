//
//  SecondViewController.swift
//  TableViewRock
//
//  Created by Kaitha,Abhinay Reddy on 2/19/19.
//  Copyright © 2019 Kaitha,Abhinay Reddy. All rights reserved.
//

import UIKit

class TouristSitesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
   var touristplaces = ["Paris","Venice","Zurich","Fiji","Hyderabad"]
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0{
                return touristplaces.count
            }else{
                return -1
            }
        }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "city")!
        cell.textLabel?.text = touristplaces[indexPath.row]
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

