//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by abd ul’Karim 📚 on 27.03.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(user)!"
    }
}
    

