//
//  Const.swift
//  Day01
//
//  Created by Godlike on 2017/10/27.
//  Copyright © 2017年 不愿透露姓名的洪先生. All rights reserved.
//

import Foundation
import UIKit


var RGBAColor: (CGFloat, CGFloat, CGFloat, CGFloat) -> UIColor = {red, green, blue, alpha in
    return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
}
