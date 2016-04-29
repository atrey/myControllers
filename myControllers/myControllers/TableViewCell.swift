//
//  TableViewCell.swift
//  myControllers
//
//  Created by Praženica Andrej on 14/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit


//here i am "designing" one cell.. define all items in cell, let(s)
class TableViewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let thumbnailImageView = UIImageView()
        let titleLabel = UILabel()
//        let subtitleLabel = UILabel()
//        let labelsVStack = UIStackView(arrangedSubviews: [titleLabel])
        //drbnem si tu horizontalny stack.. kde budem mat image a title
        let topLevelHStack = UIStackView(arrangedSubviews: [thumbnailImageView, titleLabel])
        
        //sem si jebnem do contentView (skladam v nom jednotlive riadky)
        contentView.addSubview(topLevelHStack)
        
        ; {
            self.thumbnailImageView = thumbnailImageView
            self.titleLabel = titleLabel
//            self.subtitleLabel = subtitleLabel
//            self.labelsVStack = labelsVStack
            self.topLevelHStack = topLevelHStack
        }()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    weak var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.snp_makeConstraints { make in
                make.size.equalTo(80)
            }
        }
    }
    weak var titleLabel: UILabel! {
        didSet {
            
        }
    }
    
//    weak var subtitleLabel: UILabel! {
//        didSet {
//            subtitleLabel.numberOfLines = 0
//        }
//    }
    
//    weak var labelsVStack: UIStackView! {
//        didSet {
//            labelsVStack.axis = .Vertical
//            labelsVStack.spacing = 10
//            labelsVStack.alignment = .Center
//            labelsVStack.snp_makeConstraints { make in
//            }
//        }
//    }
    
    //uprava tol level stacku.. ze je rozinontalny atd atd.. 
    weak var topLevelHStack: UIStackView! {
        didSet {
            topLevelHStack.axis = .Horizontal
            topLevelHStack.alignment = .Top
            topLevelHStack.spacing = 10
            topLevelHStack.snp_makeConstraints { make in
                make.edges.equalTo(contentView).inset(10)
            }
        }
    }
}