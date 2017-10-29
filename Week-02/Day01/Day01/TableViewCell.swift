//
//  TableViewCell.swift
//  Day01
//
//  Created by Godlike on 2017/10/24.
//  Copyright © 2017年 不愿透露姓名的洪先生. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet var ImageV: UIImageView!
    override func awakeFromNib() {
  
        super.awakeFromNib()
        // Initialization code
        self.ImageV.layer.cornerRadius = 25.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
