//
//  TravelADTableViewCell.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/13/25.
//

import UIKit

class TravelADTableViewCell: UITableViewCell {
    @IBOutlet weak var adBtn: UIButton!
    @IBOutlet weak var adLabel: UILabel!
    @IBOutlet weak var uiView: UIView!
    let pastelColors: [UIColor] = [
        UIColor(red: 255/255, green: 209/255, blue: 220/255, alpha: 1), // 연핑크
        UIColor(red: 204/255, green: 235/255, blue: 197/255, alpha: 1), // 연초록
        UIColor(red: 197/255, green: 224/255, blue: 255/255, alpha: 1), // 연하늘
        UIColor(red: 255/255, green: 236/255, blue: 179/255, alpha: 1), // 연노랑
        UIColor(red: 230/255, green: 210/255, blue: 255/255, alpha: 1), // 연보라
        UIColor(red: 255/255, green: 221/255, blue: 198/255, alpha: 1)  // 살구빛
    ]

    override func awakeFromNib() {
        super.awakeFromNib()
        adBtn.clipsToBounds = true
        adBtn.layer.cornerRadius = 8
//        adBtn.titleLabel?.lineBreakMode = .byTruncatingTail
        adBtn.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        uiView.layer.cornerRadius = 10
        uiView.clipsToBounds = true
        if let randomColor = pastelColors.randomElement() {
            uiView.backgroundColor = randomColor
        }

    }
    func configureCell(adText: String) {
        adLabel.text = adText
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
