//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by abd ul’Karim 📚 on 01.04.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?.last?.title = user.person.fullName
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else {return}
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userDataVC = navigationVC.topViewController
                guard let userDataVC = userDataVC as? UserDataViewController else {return}
                userDataVC.user = user
            }
        }
    }
}
