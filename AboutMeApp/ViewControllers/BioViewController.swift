//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by abd ul’Karim 📚 on 30.03.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        bioTextView.text = user.person.bio
        bioTextView.backgroundColor = .clear
        bioTextView.textColor = .white
    }

}
