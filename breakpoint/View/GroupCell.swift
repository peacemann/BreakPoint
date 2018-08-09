//
//  GroupCell.swift
//  breakpoint
//
//  Created by My Macbook Pro on 09/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    
    @IBOutlet weak var groupDescriptionLbl: UILabel!
    
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescriptionLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members"
    }
}
