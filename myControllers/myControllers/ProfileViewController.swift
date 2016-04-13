//
//  ProfileViewController.swift
//  myControllers
//
//  Created by Praženica Andrej on 07/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import SnapKit

class ProfileViewController: UIViewController {
    override func loadView() {
        super.loadView()
        view.backgroundColor = .whiteColor()
        
        let profileHeader = UIView()
        
        profileHeader.backgroundColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0)
        
        view.addSubview(profileHeader)
        
        profileHeader.snp_makeConstraints { (make) in
            make.top.equalTo(0)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
//            make.height.equalTo(200)
        }
        
        let profileImage = UIImage(named: "profile-app")
        let profileImageView = UIImageView(image: profileImage!)
        profileHeader.addSubview(profileImageView)
        
        profileImageView.snp_makeConstraints { (make) in
            make.centerX.equalTo(0)
            make.top.equalTo(profileHeader.snp_top).offset(20)
        }
        
        let profileNameLabel = UILabel()
        
        profileNameLabel.text = "Andrej Prazenica"
        profileNameLabel.textColor = UIColor.whiteColor()
        
        profileHeader.addSubview(profileNameLabel)
        
        profileNameLabel.snp_makeConstraints { (make) in
            make.top.equalTo(profileImageView.snp_bottom).offset(20)
            make.centerX.equalTo(0)
            make.bottom.equalTo(profileHeader.snp_bottom).offset(-20)
        }
        
        
        
        
        let scrollViewProfile = UIScrollView()
        view.addSubview(scrollViewProfile)
        
        scrollViewProfile.snp_makeConstraints { (make) in
            make.height.equalTo(1200)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.width.equalTo(view)
            make.top.equalTo(profileHeader.snp_bottom)
        }
        
        let profileText = UILabel()
        profileText.text = "lreomfsjlk kjdsl jkkfsdj kfdsjaf ksdfja sf jfkl jdsajf sa;fj 09wafkl skjf ;sfjkslhdf shfjkshdlf kjsfk s ksajdfkad sfkasdjfklsadkf jl;sdkjf kdlj fl;sjkfhk sadh fjksdlkksljfljasjkf asdofljkwal fsdajkfnkxc nvxvjh 89jeruo4irnknjknjckvjhvoijafisdifsdkjfhkj jknk nasnkjf fsdl jjh kjfdsflsdfk kjf ask fkl  dfkf kjls"
        
        scrollViewProfile.addSubview(profileText)
        
        
        profileText.snp_makeConstraints { (make) in
            make.top.equalTo(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        let logout = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: #selector(ProfileViewController.logout))
        
        logout.tintColor = UIColor.redColor()
        self.navigationItem.rightBarButtonItem = logout
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]

        navigationController?.navigationBar.barTintColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0)

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func logout(sender: UIButton) {
        
        let logoutController = UIAlertController(title: "Logout?", message: "Do you really want to log out?", preferredStyle: .Alert)
        
        
        let cancelAction = UIAlertAction(title: "No, i want stay", style: .Cancel) { (action) in
            print("cancel")
        }
        
        logoutController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "Yes, leave it", style: .Default) { (action) in
            let textField = logoutController.textFields![0] as UITextField
            print(textField.text)
        }
        
        logoutController.addAction(OKAction)
        
        self.presentViewController(logoutController, animated: true, completion: nil)
    }
    
}