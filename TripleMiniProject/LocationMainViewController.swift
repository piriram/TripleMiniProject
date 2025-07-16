//
//  LocationMainViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/15/25.
//

import UIKit

class LocationMainViewController: UIViewController {
    var travelInfo: Travel?
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var locationImg: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "관광지 화면"
       
        backBtn.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
        locationImg.kf.setImage(with: URL(string: travelInfo?.travel_image ?? TravelInfo.defaultImg))
        locationImg.contentMode = .scaleAspectFill
        locationImg.layer.cornerRadius = 10
        titleLabel.text = travelInfo?.title
        subtitleLabel.text = travelInfo?.description
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
