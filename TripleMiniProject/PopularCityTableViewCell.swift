//
//  PopularCityTableViewCell.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/15/25.
//

import UIKit

class PopularCityTableViewCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    var cityInfo: City? = nil
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(cityInfo: City){
        cityLabel.text = "\(cityInfo.city_name) | \(cityInfo.city_english_name)"
        subtitle.text = cityInfo.city_explain
        img.kf.setImage(with: URL(string: cityInfo.city_image)!)
        img.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMaxYCorner]
        img.layer.cornerRadius = 20
        img.layer.shadowColor = UIColor.black.cgColor
//        img.layer.shadowOpacity = 0.3
//        img.layer.shadowRadius = 10
//        img.layer.shadowOffset = CGSize(width: 4, height: 4)
//        img.clipsToBounds = false
//        
        
    }
    
}
