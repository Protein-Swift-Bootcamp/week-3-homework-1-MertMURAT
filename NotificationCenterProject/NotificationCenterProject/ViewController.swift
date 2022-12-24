//
//  ViewController.swift
//  NotificationCenterProject
//
//  Created by Mert Murat on 20.12.2022.
//

import UIKit

let notificationKey = "com.mert"

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTxtLbl: UILabel!

 
    
    @IBOutlet weak var ageTxtLbl: UILabel!
    
    @IBOutlet weak var goToSecondVCBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("text"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification2(_:)), name: Notification.Name("text2"), object: nil)
        
        goToSecondVCBtn.layer.cornerRadius = 10
      
    }
    
    @objc func didGetNotification(_ notification: Notification){
        let textName = notification.object as! String?
        nameTxtLbl.text = textName
        
    }
    
    @objc func didGetNotification2(_ notification: Notification){
        let textAge = notification.object as! String?
        ageTxtLbl.text = textAge
    }
    
    
    @IBAction func goToSecondVCTap(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "other") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    
    
}
 
