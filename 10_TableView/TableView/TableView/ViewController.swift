//
//  ViewController.swift
//  TableView
//
//  Created by ayako_sayama on 2017-06-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    var fruits: [String] = [ ]
    var cellIdentifier = "CellIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruits = ["apple", "watermelon", "pineapple", "banana"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }


}

