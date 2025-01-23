//
//  WelcomeScreenViewController.swift
//  LingoMate Port
//
//  Created by UCF 2 on 20/01/2025.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet weak var strtbtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorner(button: strtbtn)
    
        // Do any additional setup after loading the view.
    }


    @IBAction func startbtnPressed(_ sender:UIButton)
    {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        newViewController.modalTransitionStyle = .crossDissolve
        self.present(newViewController, animated: true, completion: nil)

    }
    

}
