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
        
        ref = Database.database().reference()
        self.ref.child("user").setValue(["username": "Xin King"])
        self.ref.child("user").observe(.value) { (snapshot) in
            //            let username = snapshot.value as? [String:String] ?? ["username":"none"]
            //            print(username["username"]!)
            let username = snapshot.childSnapshot(forPath: "username").value as? String ?? "none"
            self.testLabel.text = "Username is:" + username
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

