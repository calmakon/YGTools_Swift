//
//  YGUIViewFrameExtension.swift
//  HYGTools_Swift
//
//  Created by HYG on 2018/3/26.
//  Copyright © 2018年 calmakon. All rights reserved.
//

/// UIView的分类，添加扩展方法

import Foundation
import UIKit

extension UIView {
    public var left: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    public var top: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    public var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
    }
    public var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
    }
    public var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    public var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    public var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    public var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center = CGPoint(x:newValue,y:self.center.y)
        }
    }
    public var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center = CGPoint(x:self.center.x,y:newValue)
        }
    }
    public var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }

    /// 截屏，当前视图
    /// - Returns: UIImage对象
    public func snapshotImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

    /// 给当前视图添加圆角
    /// - Parameters:
    ///   - corners: UIRectCorner,在哪个方向上添加圆角，e.g. 左上，坐下，右上，右下
    ///   - redius: 圆角大小，e.g. 10px
    public func addCoradius(corners: UIRectCorner,redius: CGFloat) {
        let size = CGSize(width:redius,height:redius)
        let maskPath = UIBezierPath.init(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
    }

    /// 给当前视图添加圆角
    /// - Parameters:
    ///   - redius: 圆角大小，e.g. 10px
    public func addCoradius(redius: CGFloat) {
        let size = CGSize(width:redius,height:redius)
        let maskPath = UIBezierPath.init(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: size)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
    }
}

