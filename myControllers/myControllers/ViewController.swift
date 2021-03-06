//
//  ViewController.swift
//  myControllers
//
//  Created by Praženica Andrej on 07/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit
import SVProgressHUD
import Argo
import SDWebImage
import Alamofire
import Firebase

private let cellId = "cellId"

class ViewController: UIViewController {
    
    var people: [Person] = [] {
        didSet {
            
        }
    }
    
        
    weak var moreInfoAboutEvent: UIButton!
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func loadView() {
        
        super.loadView()
         view.backgroundColor = UIColor(red: 236/255.0, green: 240/255.0, blue: 241/255.0, alpha: 1.0)
        
        let items = ["By distance", "With friends list"]
        
        let segmenter = UISegmentedControl(items: items)
        segmenter.selectedSegmentIndex = 0
        segmenter.tintColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0)
        
        view.addSubview(segmenter)
        
        segmenter.snp_makeConstraints { (make) in
            make.top.equalTo(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        let eventList:UIView = UIView()
        
        view.addSubview(eventList)
        
        
        eventList.backgroundColor = .whiteColor()
        eventList.snp_makeConstraints { (make) in
            make.trailing.equalTo(-20)
            make.leading.equalTo(20)
            // make.height.equalTo(140)
            make.top.equalTo(segmenter.snp_bottom).offset(20)

        }
        
        let eventImage = UIImage(named: "superman2")
        let eventImageView = UIImageView(image: eventImage!)
        eventList.addSubview(eventImageView)
        
        eventImageView.snp_makeConstraints { (make) in
            make.top.equalTo(eventList.snp_top).offset(20)
            make.left.equalTo(20)
        }
        
        let nameInEventList = UILabel()
        nameInEventList.text = "Event name"
        eventList.addSubview(nameInEventList)
        nameInEventList.font = nameInEventList.font.fontWithSize(18)
        
        nameInEventList.snp_makeConstraints { (make) in
            make.left.equalTo(eventImageView.snp_right).offset(20)
            make.top.equalTo(eventImageView.snp_top).offset(5)
        }
        
        let placeInEventList = UILabel()
        placeInEventList.text = "Praha 21.5.2016"
        eventList.addSubview(placeInEventList)
        placeInEventList.font = placeInEventList.font.fontWithSize(14)
        placeInEventList.snp_makeConstraints { (make) in
            make.top.equalTo(nameInEventList.snp_bottom).offset(5)
            make.left.equalTo(eventImageView.snp_right).offset(20)
        }
        
        
        let moreInfoAboutEvent = UIButton(type: UIButtonType.System)
        moreInfoAboutEvent.setTitle("More Info", forState: .Normal)
        eventList.addSubview(moreInfoAboutEvent)
        moreInfoAboutEvent.tintColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0)
        
        
            self.moreInfoAboutEvent = moreInfoAboutEvent
        
        
        moreInfoAboutEvent.snp_makeConstraints { (make) in
            make.top.equalTo(eventImageView.snp_bottom).offset(10)
            make.centerX.equalTo(eventList)
            make.bottom.equalTo(eventList.snp_bottom).offset(-5)
        }
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addEvent = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: #selector(ViewController.addEvent))
        addEvent.tintColor = UIColor.whiteColor()
        
        
        //set backbutton white
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        
        //add right navigation item - in our case - addEvent
        self.navigationItem.rightBarButtonItem = addEvent
        
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        navigationController?.navigationBar.barStyle = UIBarStyle.Default
        self.moreInfoAboutEvent.addTarget(self, action: #selector(ViewController.showEventInfo), forControlEvents: .TouchUpInside)
    
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    
    }
    
    func showEventInfo () {
        let EventInfoController = EventInfoModal()
        self.presentViewController(EventInfoController, animated: true, completion: nil)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    
        

        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addEvent() {
        self.navigationController?.pushViewController(AddEventController(), animated: true)
    }


}

