//
//  ViewController.swift
//  NotificationCenterProject
//
//  Created by Mert Murat on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var notificationTxtLbl: UILabel!
    
    @IBOutlet weak var infoLbl: UILabel!
    
    @IBOutlet weak var goToSecondVCBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goToSecondVCBtn.layer.cornerRadius = 10
        notificationTxtLbl.text = "Didn' t notify yet :("
        infoLbl.text = "Name and Age not set. Go to SecondViewController to set them."
        

        
    }
    
    @IBAction func goToSecondVCTap(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
 
