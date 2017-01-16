//
//  ViewController.swift
//  Youtube
//
//  Created by Marwan on 13/01/2017.
//  Copyright © 2017 product13. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var videos: [Video] = {
       
        var klayChannel = Channel()
        klayChannel.name = "Klay Official Channel"
        klayChannel.profileImageName = "klay_channel"

        var mortadhaChannel = Channel()
        mortadhaChannel.name = "Mortadha Music Channel"
        mortadhaChannel.profileImageName = "mortadha_channel"
        var matahaVideo = Video()
        matahaVideo.title = " Klay BBJ - Mataha Official"
        matahaVideo.thumbnailImageName = "klay_bbj_mataha"
        matahaVideo.numberOfViews = 12312231
        matahaVideo.channel = klayChannel
        
        var ghadaraVideo = Video()
        ghadaraVideo.title = " Mortadha New Ghadara Song Ghadara Song Ghadara Song"
        ghadaraVideo.thumbnailImageName = "mortadha_blank_space"
        ghadaraVideo.numberOfViews = 2345432
        ghadaraVideo.channel = mortadhaChannel
        
        return [matahaVideo,ghadaraVideo]
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title="Home"
        navigationController?.navigationBar.isTranslucent=false
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text="Home"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
        
        
        collectionView?.backgroundColor=UIColor.white
        
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)
        
        
        
        setupMenuBar()
        
        setupNavBarButtons()
        
    }
    
    func setupNavBarButtons(){
        let searchImage = UIImage(named: "search_icon")?.withRenderingMode(.alwaysOriginal)
        
        let searchBarButtonItem = UIBarButtonItem(image: searchImage, style: .plain, target: self, action: #selector(handleSearch))
        
        
        let moreButton = UIBarButtonItem(image: UIImage(named: "nav_more_icon")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMore))
        
        navigationItem.rightBarButtonItems = [moreButton,searchBarButtonItem]
        
    }
    
    func handleMore(){
        print(123)
    }
    func handleSearch(){
        print(123)
    }
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    private func setupMenuBar(){
        view.addSubview(menuBar)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat(format: "V:|[v0(50)]", views: menuBar)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! VideoCell
        
        cell.video = videos[indexPath.item]
        //        cell.backgroundColor=UIColor.red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightx = (view.frame.width - 16 - 16) * 9 / 16
        return CGSize(width: view.frame.width, height: heightx+16+68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
