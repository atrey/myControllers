//
//  MessagesViewController.swift
//  myControllers
//
//  Created by Praženica Andrej on 07/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import SnapKit

private let cellId = "cellId"

class MessagesViewController: UIViewController {
    override func loadView() {
        super.loadView()
        let view = UIView(); view.backgroundColor = .whiteColor(); view.opaque = true; self.view = view
        
        //add table view
        let tableView = UITableView(frame: .zero, style: .Plain)
        //add table view as subview to view
        view.addSubview(tableView)
        self.tableView = tableView
    }
   
    weak var tableView: UITableView! {
        didSet {
            
            //data source pre table
            tableView.dataSource = self
            //delegate pre table
            tableView.delegate = self
            
            //metoda na registrovanie triedy.. ktora patri k danej tabulke.. (design cellu)
            tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: cellId)
            //            tableView.rowHeight = UITableViewAutomaticDimension
            //            tableView.estimatedRowHeight = 100
            tableView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
        }
    }
    
}
//extensions
extension MessagesViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! TableViewCell
        cell.thumbnailImageView.image = UIImage(named: "superman2")
        cell.titleLabel.text = "Lorem Ipsum"
//        cell.subtitleLabel.text = "Dolor sit amet etc etc Dolor sit amet etc etc Dolor sit amet etc etc Dolor sit amet etc etc Dolor sit amet etc etc"
        return cell
    }
}


extension MessagesViewController: UITableViewDelegate {
    
}


extension MessagesViewController /*: UIScrollViewDelegate*/ {
    
}