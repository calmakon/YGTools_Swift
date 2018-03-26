//
//  ViewController.swift
//  HYGTools_Swift
//
//  Created by HYG on 2018/3/26.
//  Copyright © 2018年 calmakon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let topView : UIView = YGUIKit.yg_view(backgroudColor: UIColor.red)
        topView.frame = CGRect(x: 0,y: 0,width: 100,height: 100)

        view.addSubview(topView)
        topView.center = view.center
        topView.addCoradius(redius: 10)
        topView.addCoradius(corners: [.topLeft,.bottomRight], redius: 10)

        let lable = YGUIKit.yg_lable(font: nil, textColor: nil, textAlignment: .left, numberOfLines: 0, backgroudColor: nil, text: "嘛嘛嘛麻麻")
        lable.frame = CGRect(x: 0,y: 0,width: 100,height: 30)
        //view.addSubview(lable)
        lable.center = view.center
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

