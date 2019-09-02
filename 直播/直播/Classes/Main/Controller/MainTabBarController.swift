//
//  MainTabBarController.swift
//  直播
//
//  Created by 王禹丞 on 2019/8/31.
//  Copyright © 2019 ihealth-wyc. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(name: "Home");
        addChildVC(name: "Live");
        addChildVC(name: "Follow");
        addChildVC(name: "Profile");

    }
    
    private func addChildVC(name:String){
     
        let childVc = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        addChild(childVc)
    }

}
