//
//  ViewController.swift
//  iOSAppDemo
//
//  Created by 杨陈 on 2021/11/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addNormalUILabel()
        
        addSpecialUILabel()
    }
    
    // 添加简单的 UILabel
    func addNormalUILabel() {
        // 创建 UILabel 控件
        let label = UILabel(frame: CGRect(x: 0, y: 100, width: 375, height: 130))
        // UILabel 设置文本
        label.text = "自定义简单的便签控件：设置长文本，字体加粗，字号22，颜色为蓝色，阴影为橙色，位置偏移参数为2，文字对齐模式居左，显示行数为5行"
        // UILabel 设置字体，字号22，加粗
        label.font = UIFont.boldSystemFont(ofSize: 22)
        // UILabel 设置字体颜色
        label.textColor = UIColor.blue
        // UILabel 设置阴影颜色
        label.shadowColor = UIColor.orange
        // UILabel 设置阴影位置偏移参数 3
        label.shadowOffset = CGSize(width: 3, height: 3)
        // UILabel 设置文字对齐模式，靠左对齐
        label.textAlignment = NSTextAlignment.left
        // UILabel 设置文本显示行数，为 0 表示不限制行数
        label.numberOfLines = 5
        
        // 添加控件到视图上
        self.view.addSubview(label)
    }
    
    // 添加个性化的 UILabel
    func addSpecialUILabel() {
        let label = UILabel(frame: CGRect(x: 15, y: 200, width: 375, height: 200))
        // UILabel 设置默认字体，字号12，加粗
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        
        // 设置可变属性文本
        let attStr = NSMutableAttributedString(string: "可变属性字符串，可以分段设置字体、颜色、下划线、阴影和超链接。")
        
        // 1. 设置下标范围为 [0,1] 的文本为字体22，颜色为黑色
        attStr.addAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30), NSAttributedString.Key.foregroundColor:UIColor.black], range: NSRange(location: 0, length: 2))
        
        // 2. 设置下标范围为 [2,4] 的文本为字体16，颜色为红色
        attStr.addAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22), NSAttributedString.Key.foregroundColor:UIColor.red], range: NSRange(location: 2, length: 3))
        
        // 3. 给下标范围为 [20,22] 的文本添加下划线，设置下划线颜色
        attStr.addAttributes([NSAttributedString.Key.underlineStyle: NSNumber.init(value: 1), NSAttributedString.Key.underlineColor: UIColor.red], range: NSRange(location: 20, length: 3))
        
        // 4. 给下标范围为 [24,25] 的文本添加阴影，设置阴影颜色
        let shadow = NSShadow()
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        shadow.shadowColor = UIColor.cyan
        attStr.addAttributes([NSAttributedString.Key.shadow: shadow], range: NSRange(location: 24, length: 2))
        
        // 5. 给下标范围为 [27,29] 的文本添加超链接
        let link = NSString(string: "https://www.baidu.com")
        attStr.addAttributes([NSAttributedString.Key.link: link], range: NSRange(location: 27, length: 3))
        
        // 设置可变文本
        label.attributedText = attStr
        
        self.view.addSubview(label)
    }

}

