//
//  ViewController.swift
//  Day03
//
//  Created by Godlike on 2017/10/28.
//  Copyright © 2017年 不愿透露姓名的洪先生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txt: UITextField!
    @IBOutlet var picker: UIDatePicker!
    @IBOutlet var DoneBtn: UIButton!
    var imageArray: Array<String> = [(String)()]
    var selImageArray: Array<String> = [(String)()]
  
    @objc func handleTap(sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            self.txt.resignFirstResponder()
        }
        sender.cancelsTouchesInView = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(handleTap(sender:))))
        
        self.imageArray = ["日历1","日历2","日历3","日历4"]
        self.selImageArray = ["日历1b","日历2b","日历3b","日历4b"]
        let width = self.view.frame.size.width
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0..<4 {
            let btn = UIButton(frame: CGRect(x: (width - 200)/5 * CGFloat(i + 1) + 50 * CGFloat(i), y: 150, width: 50, height: 50))
//            btn.backgroundColor = UIColor.red
            btn.setImage(UIImage.init(named: self.imageArray[i]), for: .normal)
            btn.tag = i + 1000
            btn.addTarget(self, action: #selector(clickBtn(sender:)), for:.touchUpInside)
            self.view.addSubview(btn)
        }
        self.DoneBtn.addTarget(self, action: #selector(clickDone(sender:)), for: .touchUpInside)
    }

    @objc func clickDone(sender: UIButton?) {
        let date = picker.date
        let dformatter = DateFormatter()
        dformatter.dateFormat = "yyyy-MM-dd"
        let datestr = dformatter.string(from: date)
        
        print(datestr)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func clickBtn(sender: UIButton?) {
        for i in 0..<4 {
            let temp:UIButton? = self.view.viewWithTag(i + 1000) as? UIButton
            if sender?.tag == temp?.tag {
                 sender?.setImage(UIImage.init(named: self.selImageArray[i]), for: .normal)
            }
            else {
                 temp?.setImage(UIImage.init(named: self.imageArray[i]), for: .normal)
            }
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

