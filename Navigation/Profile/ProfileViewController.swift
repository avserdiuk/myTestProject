//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Алексей Сердюк on 14.08.2022.
//  Copyright © 2022 aserdiuk. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController : UIViewController {
    
    let profileView: UIView = {
        let view = ProfileHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .secondarySystemBackground
        
        self.title = "Profile"
        
        view.addSubview(profileView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews();
        self.profileView.frame = CGRect(x: 0, y: 0, width: super.view.frame.width, height: super.view.frame.height) // TODO: уточнить правильность
    }
    
    
    
    
}
