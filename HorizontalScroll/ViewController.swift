//
//  ViewController.swift
//  HorizontalScroll
//
//  Created by Eduardo on 23/7/18.
//  Copyright © 2018 Eduardo Jordan Muñoz. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var categories = ["Peliculas", "Comics", "Personajes"]
    
}
    
extension ViewController : UITableViewDelegate { }
    
extension ViewController : UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        return cell
        
        
    }
    
  
}
    
    

