//
//  ViewController.swift
//  LifeToDo-ing
//
//  Created by Kim_Xin on 2018/04/30.
//  Copyright © 2018年 Kim_Xin. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    var ref: DatabaseReference!

    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        ref = Database.database().reference()
//        self.ref.child("user").setValue(["username": "Xin King"])
//        self.ref.child("user").observe(.value) { (snapshot) in
            //            let username = snapshot.value as? [String:String] ?? ["username":"none"]
            //            print(username["username"]!)
//            let username = snapshot.childSnapshot(forPath: "username").value as? String ?? "none"
//            self.testLabel.text = "Username is:" + username
//
//        }
        
        let screenSize = getScreenScale()
        print(screenSize.widh)
        print(screenSize.height)
        
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, 1.0)
        
        let drawPath = UIBezierPath()
        drawPath.move(to: CGPoint(x: CGFloat(view.frame.width/2), y: CGFloat(view.frame.height/2)))
        drawPath.addLine(to: CGPoint(x: CGFloat(view.frame.width), y: CGFloat(view.frame.height/2)))
        UIColor.gray.setStroke()
        drawPath.lineWidth = 1.0
        drawPath.stroke()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        let drawView = UIImageView(image: image)
        
        self.view.addSubview(drawView)
        
        if screenSize.widh == view.bounds.width {
            print("w same value")
        }
        if screenSize.widh == view.bounds.width {
            print("h same value")
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getScreenScale() -> (widh:CGFloat,height:CGFloat) {
        return (UIScreen.main.bounds.width,UIScreen.main.bounds.height)
    }
    

}

