//
//  MessagesViewController.swift
//  myControllers
//
//  Created by Praženica Andrej on 07/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import SnapKit


class MessagesViewController: UIViewController {
    override func loadView() {
        super.loadView()
        view.backgroundColor = .whiteColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sendButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Camera, target: self, action: Selector("sendMail"))
        self.navigationItem.rightBarButtonItem = sendButton
    }
    
    
}