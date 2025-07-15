//
//  MagazineTableViewCell.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/11/25.
//

import UIKit

class MagazineTableViewCell: UITableViewCell {
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super .awakeFromNib()
        selectionStyle = .none // 선택시 배경색 회색으로 바꾸는거 없애기
        locationImage.contentMode = .scaleAspectFill
        locationImage.clipsToBounds = true
        locationImage.layer.cornerRadius = 10
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
