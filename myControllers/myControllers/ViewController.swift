//
//  ViewController.swift
//  myControllers
//
//  Created by Praženica Andrej on 07/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        super.loadView()
         view.backgroundColor = .whiteColor()
        let myLabel = UILabel()
        myLabel.text = "My Name = Andrej Prazenica "
        view.addSubview(myLabel)
        
        myLabel.snp_makeConstraints { (make) in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(80)
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sendButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Camera, target: self, action: Selector("sendMail"))
        self.navigationItem.leftBarButtonItem = sendButton
        
       
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

