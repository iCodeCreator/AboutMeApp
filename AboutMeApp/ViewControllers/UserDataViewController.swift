//
//  UserDataViewController.swift
//  AboutMeApp
//
//  Created by abd ul’Karim 📚 on 30.03.2024.
//

import UIKit

final class UserDataViewController: UIViewController {

    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = user.person.age
        professionLabel.text = user.person.profession
        jobLabel.text = user.person.job
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {return}
        bioVC.user = user
    }
}
