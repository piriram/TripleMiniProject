//
//  TravelTableViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/13/25.
//

import UIKit

class TravelTableViewController: UITableViewController {
    let travelInfos: [Travel] = TravelInfo.travel
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .black
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return travelInfos.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let travelInfo = travelInfos[indexPath.row]
        
        if travelInfo.ad {
            return 75
        } else{
            return 120
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let travelInfo = travelInfos[indexPath.row]
        
        if travelInfo.ad {
            let cell = tableView.dequeueReusableCell(withIdentifier: "travelADCell", for: indexPath) as! TravelADTableViewCell
            cell.configureCell(adText: travelInfo.title)
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "travelCell", for: indexPath) as! TravelTableViewCell
            cell.configureCell(title: travelInfo.title,
                               subTitle: travelInfo.description,
                               rating: travelInfo.grade,
                               save: travelInfo.save,
                               isLiked: travelInfo.like,
                               imagePath: travelInfo.travel_image)
            if indexPath.row + 1 < travelInfos.count {
                if travelInfos[indexPath.row + 1].ad {
                    cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
                }
            }
            return cell
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !travelInfos[indexPath.row].ad{
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "LocationMainViewController") as! LocationMainViewController
            vc.travelInfo = travelInfos[indexPath.row]
            let backBar = UIBarButtonItem()
            backBar.title = ""
            navigationItem.backBarButtonItem = backBar
            navigationController?.pushViewController(vc, animated: true)
        }
        else{
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "LocationADViewController") as! LocationADViewController
            vc.adInfo = travelInfos[indexPath.row]
            vc.modalPresentationStyle = .fullScreen
            vc.navigationItem.leftBarButtonItem = UIBarButtonItem(
                systemItem: .close,
                primaryAction: UIAction(handler: { [weak self] _ in
                    self?.dismiss(animated: true, completion: nil)
                }),
                menu: nil
            )

            present(vc, animated: true)
        }
    }


}
