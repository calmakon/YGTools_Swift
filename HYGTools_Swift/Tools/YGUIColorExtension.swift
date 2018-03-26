//
//  YGUIColorExtension.swift
//  HYGTools_Swift
//
//  Created by HYG on 2018/3/26.
//  Copyright © 2018年 calmakon. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class public func hyg_color(hex: Int) -> UIColor {
        let red = ((CGFloat)((hex & 0xFF0000) >> 16))
        let green = ((CGFloat)((hex & 0xFF00) >> 8))
        let blue = ((CGFloat)(hex & 0xFF))
        return UIColor.init(red: red / 255.0, green: green, blue: blue, alpha: 1.0)
    }

    class public func hyg_color(hex: Int,alpha: CGFloat) -> UIColor {
        let red = ((CGFloat)((hex & 0xFF0000) >> 16))
        let green = ((CGFloat)((hex & 0xFF00) >> 8))
        let blue = ((CGFloat)(hex & 0xFF))
        return UIColor.init(red: red / 255.0, green: green, blue: blue, alpha: alpha)
    }
}
