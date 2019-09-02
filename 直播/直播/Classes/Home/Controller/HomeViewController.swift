//
//  HomeViewController.swift
//  直播
//
//  Created by 王禹丞 on 2019/8/31.
//  Copyright © 2019 ihealth-wyc. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       setupUI()
    }
}

extension HomeViewController{
    
    private func setupUI(){
    
        setUpNavigationBar()
        
    }
    
    private func setUpNavigationBar(){
        
        let btn = UIButton()
        btn.setImage(UIImage(named:"logo"), for: .normal)
        btn.sizeToFit()

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)

        let size = CGSize(width: 40, height: 40)
        
        let historyItem =  UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size);
        let searchItem =  UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size);
        let qrcdeItem =  UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size);
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcdeItem]

        var stringValue : Optional<String>

    }
    
}
