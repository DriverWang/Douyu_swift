//
//  PageTitleView.swift
//  直播
//
//  Created by 王禹丞 on 2019/9/2.
//  Copyright © 2019 ihealth-wyc. All rights reserved.
//

import UIKit

private let kScrollLineH : CGFloat = 2

class PageTitleView: UIView {

    private var titles : [String]
    private lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        
        return scrollView
    }()
    
    private lazy var scrollLine : UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    private lazy var labels : [UILabel] = [UILabel]()
    
    init(frame: CGRect,titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
        setupUI()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension PageTitleView{
    
    private func setupUI(){
        addSubview(scrollView)
        scrollView.frame = bounds

        setupTitleLabels()
        setupBottomMenuAndScrollLine()
    }
    
    private func setupTitleLabels(){
        
        let w : CGFloat = frame.width/CGFloat(titles.count)
        let h : CGFloat = frame.height - kScrollLineH
        let y : CGFloat = 0
        
        for(index,title) in titles.enumerated(){
            let label = UILabel()
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            let x : CGFloat = w * CGFloat(index)
            
            label.frame = CGRect(x: x, y: y, width: w, height: h)
            
            scrollView.addSubview(label)
            labels.append(label)
        }
    }
    
    private func setupBottomMenuAndScrollLine(){
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        addSubview(bottomLine)
        
        guard let firstLabel = labels.first else {
            return
        }
        firstLabel.textColor = UIColor.orange
        scrollView.addSubview(scrollLine)
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - kScrollLineH, width: firstLabel.frame.width, height: kScrollLineH)
    }
}
