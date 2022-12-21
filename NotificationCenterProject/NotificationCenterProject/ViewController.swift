//
//  ViewController.swift
//  NotificationCenterProject
//
//  Created by Mert Murat on 20.12.2022.
//

import UIKit

class ViewController: UIViewController  {

    
    
    @IBOutlet weak var numberOneTextField: UITextField! 
    @IBOutlet weak var numberTwoTextField: UITextField!
    
    
    
   
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let result = Int(numberOneTextField.text!)! + Int(numberTwoTextField.text!)!
        
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "showResultID"), object: nil, userInfo: ["result":result])
        
        self.dismiss(animated: true,completion: nil )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    
    
}
 
