//
//  PopularCityTableViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/15/25.
//

import UIKit

class PopularCityTableViewController: UITableViewController {
    @IBAction func segTab(_ sender: UISegmentedControl) {
    }
    let citys = CityInfo.city
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibName = UINib(nibName: "PopularCityTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "PopularCityTableViewCell")
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let num = citys.count
        print(num)
        return num
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCityTableViewCell", for: indexPath) as! PopularCityTableViewCell
        cell.cityInfo = citys[indexPath.row]
        cell.configure(cityInfo: citys[indexPath.row])
        // Configure the cell...
        cell.backgroundColor = .brown
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }


}
