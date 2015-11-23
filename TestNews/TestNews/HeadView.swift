//
//  HeadView.swift
//  TestNews
//
//  Created by guo on 15/11/23.
//  Copyright © 2015年 guo. All rights reserved.
//

import UIKit


class HeadView: UIView {
    
    lazy var  backgroundImageView:UIImageView = {
        let imageView = UIImageView.init(frame: CGRectMake(0, 0, 320, 130))
        imageView.image = UIImage(named: "todaynews_header_bg_day")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateHeadOffset(contentOffset:CGFloat)
    {
        
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
