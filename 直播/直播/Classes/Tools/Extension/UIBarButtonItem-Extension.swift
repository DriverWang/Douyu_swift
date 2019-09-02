//
//  UIBarButtonItem-Extension.swift
//  直播
//
//  Created by 王禹丞 on 2019/8/31.
//  Copyright © 2019 ihealth-wyc. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    class func creatItem(imageName:String,highImageName:String,size:CGSize) -> UIBarButtonItem {
    
        let btn = UIButton()
        
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.setImage(UIImage(named:highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    
    convenience init(imageName:String,highImageName:String = "" ,size:CGSize = CGSize.zero) {

        let btn = UIButton()
        
        btn.setImage(UIImage(named:imageName), for: .normal)
        if highImageName != ""{
            btn.setImage(UIImage(named:highImageName), for: .highlighted)
        }
        if size == CGSize.zero{
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        self.init(customView:btn)
    }
}
