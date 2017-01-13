//
//  Extensions.swift
//  Youtube
//
//  Created by Marwan on 13/01/2017.
//  Copyright © 2017 Proxym. All rights reserved.
//

import UIKit


extension UIColor {
    static func rgb(red: Float, green: Float, blue: Float) -> UIColor {
        return UIColor(colorLiteralRed: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView{
    func addConstraintsWithFormat(format: String, views:UIView...)  {
        var viewsDictionary=[String:UIView]()
        for (index,view) in views.enumerated(){
            let key="v\(index)"
            viewsDictionary[key]=view
            view.translatesAutoresizingMaskIntoConstraints=false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
