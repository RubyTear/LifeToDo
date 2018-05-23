//
//  OneDayTimeSheetTableViewCell.swift
//  LifeToDo-ing
//
//  Created by Kim_Xin on 2018/05/19.
//  Copyright © 2018年 Kim_Xin. All rights reserved.
//

import UIKit

class OneDayTimeSheetTableViewCell: UITableViewCell {

    @IBOutlet weak var timeSheet: UILabel!
    @IBOutlet weak var titleText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
