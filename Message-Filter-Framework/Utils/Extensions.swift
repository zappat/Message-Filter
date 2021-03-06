//
//  Extensions.swift
//  Message-Filter
//
//  Created by Liuqing Du on 2018/4/4.
//  Copyright © 2018年 JuneDesign. All rights reserved.
//

import Foundation
import UIKit

// MARK: - 扩展 UserDefaults，用于简便地保存和读取自定义对象
//extension UserDefaults {
//    func saveCustomObject(customObject object: NSCoding, key: String) {
//        let encodedObject = NSKeyedArchiver.archivedData(withRootObject: object)
//        self.set(encodedObject, forKey: key)
//        self.synchronize()
//    }
//    
//    func getCustomObject(forKey key: String) -> AnyObject? {
//        let decodedObject = self.object(forKey: key) as? NSData
//        
//        if let decoded = decodedObject {
//            let object = NSKeyedUnarchiver.unarchiveObject(with: decoded as Data)
//            return object as AnyObject
//        }
//        
//        return nil
//    }
//}

@IBDesignable
extension UIView
{

    @IBInspectable public var cornerRadius: CGFloat
    {
        set (radius) {
            layer.cornerRadius = radius
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable public var borderWidth: CGFloat
    {
        set (borderWidth) {
            self.layer.borderWidth = borderWidth
        }
        get {
            return self.layer.borderWidth
        }
    }

    @IBInspectable public var borderColor:UIColor?
    {
        set (color) {
            self.layer.borderColor = color?.cgColor
        }
        get {
            if let color = self.layer.borderColor
            {
                return UIColor(cgColor: color)
            } else {
                return nil
            }
        }
    }

    @IBInspectable public var shadowOffset: CGSize {
        set (offset) {
            layer.shadowOffset = offset
        }
        get {
            return layer.shadowOffset
        }
    }

    @IBInspectable public var shadowColor: UIColor? {
        set (color) {
            layer.shadowColor = color?.cgColor
        }
        get {
            if let color = self.layer.shadowColor {
                return UIColor(cgColor: color)
            } else {
                return nil
            }
        }
    }

    @IBInspectable public var shadowOpacity: Float {
        set (opacity) {
            layer.shadowOpacity = opacity
        }
        get {
            return layer.shadowOpacity
        }
    }

    @IBInspectable public var shadowRadius: Float {
        set (radius) {
            layer.shadowRadius = CGFloat(radius)
        }
        get {
            return Float(layer.shadowRadius)
        }
    }

    @IBInspectable public var maskToBounds: Bool {
        set (mask) {
            layer.masksToBounds = mask
        }
        get {
            return layer.masksToBounds
        }
    }

}
