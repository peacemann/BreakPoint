//
//  CreateGroupVC.swift
//  breakpoint
//
//  Created by My Macbook Pro on 08/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {

    
    @IBOutlet weak var titleTextField: InsetTextfield!
    
    @IBOutlet weak var descriptionTextField: InsetTextfield!
    
    @IBOutlet weak var doneBtn: UIButton!
    
    @IBOutlet weak var emailSearchTextField: InsetTextfield!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
    }
    
    
}
