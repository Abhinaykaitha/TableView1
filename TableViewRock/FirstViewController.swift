//
//  FirstViewController.swift
//  TableViewRock
//
//  Created by Kaitha,Abhinay Reddy on 2/19/19.
//  Copyright © 2019 Kaitha,Abhinay Reddy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var cities = ["London","New york","California","Kansas city"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return cities.count
        }else{
            return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "city")!
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

