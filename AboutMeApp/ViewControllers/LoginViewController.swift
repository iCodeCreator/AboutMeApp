//
//  ViewController.swift
//  AboutMeApp
//
//  Created by abd ul’Karim 📚 on 26.03.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarViewController else {return}
        tabBarController.user = user
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return false
        }
        return true
    }
    
    @IBAction func forgotInputData(_ sender: UIButton) {
        sender.tag == 0 
        ? showAlert(title: "Oops!", message: "Your name is \(user.login)")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) {_ in textField?.text = ""}
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
}

