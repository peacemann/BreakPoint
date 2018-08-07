//
//  AuthService.swift
//  breakpoint
//
//  Created by My Macbook Pro on 07/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> () ) {
        Auth.auth().createUser(withEmail: email, password: password) { (data, error) in
            guard let user = data?.user else {
                userCreationComplete(false, error)
                return
            }
            
            let userData = ["provider": user.providerID, "email": user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> () ) {
        Auth.auth().signIn(withEmail: email, password: password) { (data, error) in
            if error != nil {
                    loginComplete(false, error)
                    return
            }
            loginComplete(true, nil)
        }
    }
    
}
