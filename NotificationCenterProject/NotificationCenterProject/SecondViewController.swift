//
//  SecondViewController.swift
//  NotificationCenterProject
//
//  Created by Mert Murat on 20.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(showResult(data:)), name:  NSNotification.Name(rawValue: "showResultID"), object: nil)
 
       }

    @objc func showResult(data:Notification){
        
        if let userInfo = data.userInfo{
            
            let result = userInfo["result"] as! Int
            self.dataLabel.text = "Result: " + String(result)
        }
    }
    
   
    }


