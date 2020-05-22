//
//  TalkCell.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/05/13.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class TalkCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    static let identifier: String = "TalkCell"
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUserInformation(profileImageName : String, name : String, message:String ){
        profileImage.image = UIImage(named : profileImageName)
        nameLabel.text = name
        messageLabel.text = message
        
    }

}
