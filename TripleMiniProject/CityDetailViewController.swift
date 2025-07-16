//
//  CityDetailViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/16/25.
//

import UIKit

class CityDetailViewController: UIViewController {
    
    var cityInfo:City?
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var citySubtitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let city = cityInfo{
            cityImageView.contentMode = .scaleAspectFill
            cityImageView.layer.cornerRadius = 10
            cityImageView.kf.setImage(with: URL(string: city.city_image))
            cityNameLabel.text = "\(city.city_name) | \(city.city_english_name)"
            citySubtitleLabel.text = city.city_explain
        }
        
    }

}
