//
//  VideoCell.swift
//  Youtube
//
//  Created by Marwan on 13/01/2017.
//  Copyright © 2017 Proxym. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    let thumbnailImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named:"mortadha_blank_space")!
        imageView.contentMode =  .scaleAspectFill
        imageView.clipsToBounds = true
        //        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image=UIImage(named: "marwan_profile")
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        
        
        return imageView
    }()
    
    let separatorView: UIView = {
        let view=UIView()
        view.backgroundColor=UIColor(colorLiteralRed: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.text = "Mortadha New - Ghadara Song"
        return label
    }()
    
    let subtitleTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.text = "MortadhaOffiacial • 1,586,900 views • 2 years ago"
        textView.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        textView.textColor = UIColor.lightGray
        return textView
    }()
    
    func setupViews()  {
        
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subtitleTextView)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]", views: userProfileImageView)
        
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView,userProfileImageView,separatorView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
        thumbnailImageView.frame=CGRect(x: 0, y: 0, width: 100, height: 100)
        
        //top constraint
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8)])
        //left constraint
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView , attribute: .right, multiplier: 1, constant: 8)])
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView , attribute: .right, multiplier: 1, constant: 0)])
        //        hight constraint
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: thumbnailImageView , attribute: .height, multiplier: 0, constant: 20)])
        
        //top constraint
        addConstraints([NSLayoutConstraint(item: subtitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4)])
        //left constraint
        addConstraints([NSLayoutConstraint(item: subtitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView , attribute: .right, multiplier: 1, constant: 8)])
        addConstraints([NSLayoutConstraint(item: subtitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView , attribute: .right, multiplier: 1, constant: 0)])
        //        hight constraint
        addConstraints([NSLayoutConstraint(item: subtitleTextView, attribute: .height, relatedBy: .equal, toItem: self , attribute: .height, multiplier: 0, constant: 20)])
        
        
        
        //        addConstraintsWithFormat(format: "V:[v0(20)]", views: titleLabel)
        //        addConstraintsWithFormat(format: "H:|[v0]|", views: titleLabel)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


