//
//  AddEventController.swift
//  myControllers
//
//  Created by Praženica Andrej on 12/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import SnapKit

class AddEventController : UIViewController {
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = UIColor(red: 236/255.0, green: 240/255.0, blue: 241/255.0, alpha: 1.0)
        self.title = "Add new Event"
        
        var newEventName = UITextField()
        newEventName.placeholder = "Add Event Name"
        newEventName.borderStyle = UITextBorderStyle.RoundedRect
        view.addSubview(newEventName)
        
        newEventName.snp_makeConstraints { (make) in
            make.top.equalTo(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}