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
    
    var myView: UIView?
    
    override func loadView() {
        
        let view = UIView(); view.backgroundColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0);  self.view = view
        
        
        let titleLabel = UILabel()
        let subtitleLabel = UILabel()
        let profileHeader = UIView()
        let profilePicture = UIImageView()
        let profileName = UILabel()
//        let vStack = UIStackView(arrangedSubviews: [profileHeader,titleLabel, subtitleLabel])
        let vStack = UIStackView(arrangedSubviews: [UIView()])
        myView = UIView()
        myView?.addSubview(profileHeader)
        myView?.addSubview(titleLabel)
        myView?.addSubview(subtitleLabel)
        
        
        
        let scrollView = UIScrollView()
        //scrollView.addSubview(vStack)
        view.addSubview(scrollView)
        scrollView.opaque = false
        scrollView.backgroundColor = UIColor.clearColor()
        vStack.backgroundColor = UIColor.blackColor()
        profileHeader.addSubview(profileName)
        profileHeader.addSubview(profilePicture)
        
        
        self.profileHeader = profileHeader
        self.profileName = profileName
        self.titleLabel = titleLabel
        self.subtitleLabel = subtitleLabel
        self.scrollView = scrollView
        self.vStack = vStack
        self.profilePicture = profilePicture
    }
    
    weak var profileHeader: UIView! {
        didSet {
//            profileHeader.snp_makeConstraints { (make) in
//                make.leading.equalTo(0)
//                make.trailing.equalTo(0)
//                make.height.equalTo(180)
//            }
            profileHeader.backgroundColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0)
            automaticallyAdjustsScrollViewInsets = true
        }
    }
    
    weak var profilePicture: UIImageView! {
        didSet {
//            profilePicture.snp_makeConstraints { (make) in
//                make.centerX.equalTo(0)
//                make.top.equalTo(20)
//            }
        }
    }
    
    
    weak var profileName: UILabel! {
        didSet {
            profileName.textAlignment = .Center
            profileName.textColor = UIColor.whiteColor()
//            profileName.snp_makeConstraints { (make) in
//                make.leading.equalTo(20)
//                make.trailing.equalTo(-20)
//                make.bottom.equalTo(profileHeader.snp_bottom).offset(-20)
//                
//            }
        }
    }
    
    
    
    weak var titleLabel: UILabel! {
        didSet {
            titleLabel.textAlignment = .Center
        }
    }
    
    weak var subtitleLabel: UILabel! {
        didSet {
            subtitleLabel.numberOfLines = 0
//            subtitleLabel.snp_makeConstraints { (make) in
//                make.leading.equalTo(20)
//                make.trailing.equalTo(-20)
//            }
        }
    }
    
    weak var vStack: UIStackView! {
        didSet {
            vStack.axis = .Vertical
            vStack.spacing = 20
            vStack.alignment = .Center
//            vStack.snp_makeConstraints { make in
//                make.edges.equalTo(scrollView)
//                make.width.equalTo(view)
//                
//            }
        }
    }
    
    weak var scrollView: UIScrollView! {
        didSet {
            scrollView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
            scrollView.delegate = self
            scrollView.backgroundColor = UIColor.whiteColor()
            //scrollView.bounces = false
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //background color of navigation bar
        navigationController?.navigationBar.barTintColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 0.6)
        //textcolor of navigation title
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        //remove border from navigation controller
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        //set image to profile picture
        profilePicture.image = UIImage(named: "profile-app")
        //set text to profileName
        profileName.text = "Andrej Prazenica"
        // set text to title Label
        titleLabel.text = "Lorem ipsum"
        //set text to subtitle label
        subtitleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl."
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

}


extension ProfileViewController: UIScrollViewDelegate {
    
}