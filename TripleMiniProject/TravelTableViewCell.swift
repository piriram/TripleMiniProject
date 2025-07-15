//
//  TravelTableViewCell.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/13/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet var stars: [UIImageView]!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var heartBtn: UIButton!
    @IBOutlet weak var travelImg: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell(title:String,subTitle:String?,rating:Double?,save:Int?,isLiked:Bool?,imagePath:String?){
        titleLabel.text = title
        subtitleLabel.text = subTitle
        let visitorNum = save ?? 0 > 0 ? Int.random(in: 1...1000) : 0
        infoLabel.text = "(\(visitorNum)) · 저장 \(String(describing: save ?? 0))"
        
        configureStar(rating: rating ?? 0.0)
     
       
        if isLiked == true {
            heartBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            heartBtn.tintColor = .systemPink
        }

        if let imagePath = imagePath{
            travelImg.kf.setImage(with: URL(string: imagePath)!)
            travelImg.contentMode = .scaleAspectFill
            travelImg.layer.cornerRadius = 10
        }
    }
    func configureStar(rating: Double) {
        for (index, starImageView) in stars.enumerated() {
            if rating >= Double(index + 1) {
                starImageView.image = UIImage(systemName: "star.fill")
            } else if rating > Double(index) {
                starImageView.image = UIImage(systemName: "star.leadinghalf.filled")
            } else {
                starImageView.image = UIImage(systemName: "star")
            }
            starImageView.tintColor = .systemYellow
        }
    }


}
