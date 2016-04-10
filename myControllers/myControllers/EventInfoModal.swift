//
//  EventInfoModal.swift
//  myControllers
//
//  Created by Praženica Andrej on 10/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit
import SnapKit


class EventInfoModal: UIViewController {
    
    var closeModal:UIButton!
    
    
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .whiteColor()
        
        let closeModal = UIButton(type: UIButtonType.System)
        closeModal.setTitle("Close", forState: .Normal)
        
        view.addSubview(closeModal)
        
        closeModal.snp_makeConstraints { (make) in
            make.center.equalTo(0)
        }
        
        closeModal.addTarget(self, action: #selector(dismissButtonTapped(_:)), forControlEvents: .TouchUpInside)
        
        
    }
    
    func dismissButtonTapped(sender: UIButton) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}