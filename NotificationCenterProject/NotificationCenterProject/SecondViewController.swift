//
//  SecondViewController.swift
//  NotificationCenterProject
//
//  Created by Mert Murat on 20.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var enterNameTF: UITextField!
    
    @IBOutlet weak var enterAgeTF: UITextField!
    
    @IBOutlet weak var submitBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.layer.cornerRadius = 10
        submitBtn.layer.cornerRadius = 10

        
       }

    @IBAction func submitBtnTap(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    
   
    }


