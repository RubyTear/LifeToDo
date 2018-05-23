//
//  DayScheduleViewController.swift
//  LifeToDo-ing
//
//  Created by Kim_Xin on 2018/05/03.
//  Copyright © 2018年 Kim_Xin. All rights reserved.
//

import UIKit

class DayScheduleViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableViewTag_0: UITableView!
    @IBOutlet weak var tableViewTag_1: UITableView!    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewTag_0.tableFooterView = UIView(frame: .zero)
        tableViewTag_1.tableFooterView = UIView(frame: .zero)
        
        tableViewTag_0.separatorColor = UIColor.black
        tableViewTag_1.separatorColor = UIColor.black
        
        let customCell = UINib(nibName: "OneDayTimeSheetTableViewCell", bundle: nil)
        tableViewTag_1.register(customCell, forCellReuseIdentifier: "myCustomCell")
        
        //        tableViewTag_0.layer.borderWidth = 0.5
        //        tableViewTag_1.layer.borderWidth = 0.5
        
        //        let cenderLine = CALayer()
        //        cenderLine.frame = CGRect(x: tableViewTag_0.frame.width, y: 0, width: 0.5, height: tableViewTag_0.frame.height)
        //        cenderLine.backgroundColor = UIColor.black.cgColor
        //        tableViewTag_0.layer.addSublayer(cenderLine)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, 1.0)
        
        let drawMiddleLine = UIBezierPath()
        drawMiddleLine.move(to: CGPoint(x: CGFloat(view.frame.width/2), y: view.safeAreaInsets.top))
        
        drawMiddleLine.addLine(to: CGPoint(x: CGFloat(view.frame.width/2), y: CGFloat(view.frame.height)))
        UIColor.black.setStroke()
        drawMiddleLine.lineWidth = 0.5
        drawMiddleLine.stroke()
        
        let middleLine = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.view.addSubview(UIImageView(image: middleLine))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0 {
            return 3
        }else if tableView.tag == 1 {
            return 2
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! APMTimeTableViewCell
            
            switch indexPath.row {
            case 0:
                cell.apmLabel.text = "午前"
                
                cell.separatorInset = .zero
            case 1:
                cell.apmLabel.text = "午後"
                
                cell.separatorInset = .zero
            case 2:
                cell.apmLabel.text = "夕方"
                
                cell.separatorInset = .init(top: 0.0, left: 0.0, bottom: 0.0, right: CGFloat(view.bounds.width / 2))
                
            default: break
                
            }
            
            return cell
        }else if tableView.tag == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as! OneDayTimeSheetTableViewCell

            if indexPath.row == 1 {
                cell.separatorInset = .init(top: 0.0, left: 0.0, bottom: 0.0, right: CGFloat(view.bounds.width / 2))
            }else {
                cell.separatorInset = .zero
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView.tag == 0 {
            return self.view.bounds.height / 3
        }else if tableView.tag == 1 {
            return self.view.bounds.height / 2
        }
        return self.view.bounds.height
    }
    
}
