//
//  APMTimeTableViewCell.swift
//  LifeToDo-ing
//
//  Created by Kim_Xin on 2018/05/19.
//  Copyright © 2018年 Kim_Xin. All rights reserved.
//

import UIKit

class APMTimeTableViewCell:UITableViewCell,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var apmLabel: UILabel!
    @IBOutlet weak var tableViewTag_2: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableViewTag_2.delegate = self
        tableViewTag_2.dataSource = self
        
        tableViewTag_2.separatorInset = .zero
        
        let customCell = UINib(nibName: "OneDayTimeSheetTableViewCell", bundle: nil)
        tableViewTag_2.register(customCell, forCellReuseIdentifier: "myCustomCell")
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as! OneDayTimeSheetTableViewCell
        
        return cell
    }
    
    
}
