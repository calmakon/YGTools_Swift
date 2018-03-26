//
//  YGUIKit.swift
//  HYGTools_Swift
//
//  Created by HYG on 2018/3/26.
//  Copyright © 2018年 calmakon. All rights reserved.
//

import UIKit

class YGUIKit: NSObject {

    /// 初始化一个view视图
    /// - Parameters:
    ///   - backgroudColor: 背景色
    /// - Returns: view对象
    class func yg_view(backgroudColor : UIColor?) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroudColor
        return view
    }

    /// 初始化一个view视图，带坐标参数
    /// - Parameters:
    ///   - frame: 坐标
    ///   - backgroudColor: 背景色
    /// - Returns: view对象
    class func yg_view(frame : CGRect,
                       backgroudColor: UIColor?) -> UIView {
        let view = UIView.init(frame: frame)
        view.backgroundColor = backgroudColor
        return view
    }

    /// 初始化一个显示图片的对象
    /// - Parameters:
    ///   - backgroudColor: 背景色
    ///   - image: UIImage对象
    /// - Returns: UIImageView对象
    class func yg_imageView(backgroudColor: UIColor?,
                            image: UIImage?) -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = backgroudColor
        imageView.image = image
        return imageView
    }

    /// 初始化一个label
    /// - Parameters:
    ///   - font: 字体
    ///   - textColor: 字体颜色
    ///   - textAlignment: 对齐方式
    ///   - numberOfLines: 行数
    ///   - backgroudColor: 背景色
    ///   - text: 值
    /// - Returns: UILabel对象
    class func yg_lable(font: UIFont?,
                        textColor: UIColor?,
                        textAlignment: NSTextAlignment,
                        numberOfLines: Int,
                        backgroudColor: UIColor?,
                        text: String?) -> UILabel {
        let label = UILabel()
        label.font = font
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroudColor
        label.text = text
        return label
    }

    /// 初始化一个按钮，图片是背景图
    /// - Parameters:
    ///   - normalBackgroundImage: 正常模式下的背景图片
    ///   - selectBackgroundImage: 选中模式下的背景图片
    ///   - titleColor: 文字颜色
    ///   - title: 文字内容
    ///   - backgroudColor: 背景色
    ///   - font: 字体样式
    /// - Returns: UIButton对象
    class func yg_button(normalBackgroundImage: UIImage?,
                         selectBackgroundImage: UIImage?,
                         backgroudColor: UIColor?,
                         titleColor: UIColor?,
                         font: UIFont?,
                         title: String?) -> UIButton {
        let button: UIButton = UIButton.init(type: .custom)
        button.setBackgroundImage(normalBackgroundImage, for: .normal)
        button.setBackgroundImage(selectBackgroundImage, for: .selected)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroudColor
        return button
    }

    /// 初始化一个按钮
    /// - Parameters:
    ///   - normalImage: 正常模式下的图片
    ///   - selectImage: 选中模式下的图片
    ///   - titleColor: 文字颜色
    ///   - title: 文字内容
    ///   - backgroudColor: 背景色
    ///   - font: 字体样式
    /// - Returns: UIButton对象
    class func yg_button(normalImage: UIImage?,
                         selectImage: UIImage?,
                         backgroudColor: UIColor?,
                         titleColor: UIColor?,
                         font: UIFont?,
                         title: String?) -> UIButton {
        let button = UIButton.init(type: .custom)
        button.setImage(normalImage, for: .normal)
        button.setImage(selectImage, for: .selected)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroudColor
        return button
    }

    /// 初始化一个textView
    /// - Parameters:
    ///   - textAlignment: 选中模式下的图片
    ///   - titleColor: 文字颜色
    ///   - text: 文字内容
    ///   - backgroudColor: 背景色
    ///   - font: 字体样式
    /// - Returns: UITextView对象
    class func yg_textView(font: UIFont?,
                           textAlignment: NSTextAlignment,
                           backgroudColor: UIColor?,
                           textColor: UIColor?,
                           text: String?) -> UITextView {
        let textView = UITextView()
        textView.font = font
        textView.textAlignment = textAlignment
        textView.backgroundColor = backgroudColor
        textView.textColor = textColor
        textView.text = text
        return textView
    }

    /// 初始化一个输入框
    /// - Parameters:
    ///   - textAlignment: 选中模式下的图片
    ///   - titleColor: 文字颜色
    ///   - placeholder: 提示文字内容
    ///   - backgroudColor: 背景色
    ///   - font: 字体样式
    ///   - borderStyle: 边框样式
    ///   - clearButtonMode: clear按钮模式
    ///   - keyboardType: 键盘类型
    /// - Returns: UITextField对象
    class func yg_textField(font: UIFont?,
                            textAlignment: NSTextAlignment,
                            borderStyle: UITextBorderStyle,
                            backgroudColor: UIColor?,
                            textColor: UIColor?,
                            clearButtonMode: UITextFieldViewMode,
                            keyboardType: UIKeyboardType,
                            placeholder: String?) -> UITextField {
        let textField = UITextField()
        textField.font = font
        textField.textAlignment = textAlignment
        textField.backgroundColor = backgroudColor
        textField.textColor = textColor
        textField.placeholder = placeholder
        textField.borderStyle = borderStyle
        textField.clearButtonMode = clearButtonMode
        textField.keyboardType = keyboardType
        return textField
    }
}


