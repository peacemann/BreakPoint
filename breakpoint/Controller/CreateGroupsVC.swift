//
//  CreateGroupVC.swift
//  breakpoint
//
//  Created by My Macbook Pro on 08/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {

    
    @IBOutlet weak var titleTextField: InsetTextfield!
    @IBOutlet weak var descriptionTextField: InsetTextfield!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var emailSearchTextField: InsetTextfield!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
    }
    
    
}

extension CreateGroupsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else { return UITableViewCell() }
        let profileImage = UIImage(named: "defaultProfileImage")
        cell.configureCell(profileImage: profileImage!, email: "sdfsf@sdfs.com", isSelected: true)
        return cell
    }
    
}
