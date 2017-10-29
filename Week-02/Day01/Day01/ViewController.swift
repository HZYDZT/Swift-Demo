//
//  ViewController.swift
//  Day01
//
//  Created by Godlike on 2017/10/24.
//  Copyright © 2017年 不愿透露姓名的洪先生. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet var tableView: UITableView!
    var headerArray:Array<String> = [(String)()]
    var imageArray:Array<String> = [(String)()]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableCell")! as! TableViewCell
        
//        if indexPath.section == 0 {
            cell.ImageV.image = UIImage.init(named: self.imageArray[indexPath.row])
//        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 70
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.headerArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let key = self.headerArray[section];
        let view:UIView? = UIView.init(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: self.view.frame.size.width, height: 40)))
        view?.backgroundColor = RGBAColor(244.0, 244.0, 244.0, 1.0)
        let label:UILabel? = UILabel.init(frame: CGRect.init(origin: CGPoint.init(x: 20, y: 10), size: CGSize.init(width: self.view.frame.size.width, height: 30)))
    
        label?.text = key;
        label?.textColor = RGBAColor(150,100,100,1)
        label?.font = UIFont.boldSystemFont(ofSize: 17)
        label?.backgroundColor = RGBAColor(244.0, 244.0, 244.0, 1.0)
        view?.addSubview(label!)
        return view;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageArray = ["1.jpg","2.jpeg","3.jpeg","4.jpg","5.png"]
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "TableCell")
        self.headerArray = ["RECENT","FRIENDS"]
        self.tableView.backgroundColor = RGBAColor(244, 244, 244, 1)
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

