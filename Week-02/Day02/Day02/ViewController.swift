//
//  ViewController.swift
//  Day02
//
//  Created by Godlike on 2017/10/28.
//  Copyright © 2017年 不愿透露姓名的洪先生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ScrollerView: UIScrollView!
    var  imageArray: Array<String> = [(String)()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageArray = ["one.jpeg","two.jpeg","three.jpeg","four.jpeg","five.jpeg"]
        let width = self.view.frame.size.width
        let height = self.ScrollerView.frame.size.height
        for i in 0..<self.imageArray.count {
            let imageV = UIImageView(frame: CGRect(x: 30 + (width - 30) * CGFloat(i), y: 10, width: width - 60, height: height - 20))
            imageV.layer.cornerRadius = 8
            imageV.clipsToBounds = true
            imageV.image = UIImage(named: self.imageArray[i])
            self.ScrollerView.addSubview(imageV)
        }
        self.ScrollerView.contentSize = CGSize(width: 30 + (width - 30) * 5, height: height)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

