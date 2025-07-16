//
//  PopularCityViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/15/25.
//

import UIKit

class PopularCityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var tableView: UITableView!
    
    let citys = CityInfo.city
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "PopularCityTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "PopularCityTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 140
        navigationItem.title = "인기 도시"
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citys.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCityTableViewCell", for: indexPath) as! PopularCityTableViewCell
        cell.configure(cityInfo: citys[indexPath.row])
        
        print("\(indexPath.row): \(citys[indexPath.row].city_name)")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self, #function)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "CityDetailViewController") as! CityDetailViewController
        vc.cityInfo = citys[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
          
         
}
