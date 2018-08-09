//
//  GroupFeedVC.swift
//  breakpoint
//
//  Created by My Macbook Pro on 09/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: NSLayoutConstraint!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: InsetTextfield!
    @IBOutlet weak var sendBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
}
