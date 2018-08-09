//
//  GroupFeedCell.swift
//  breakpoint
//
//  Created by My Macbook Pro on 09/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
