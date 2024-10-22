//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Ewgeniy Izyurov on 10.10.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: Variables
    private let user = "1"
    private let password = "1"
    private let person = User.getInfoAboutPerson()
    
    // MARK: Override methods
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password
        else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach({ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = user
                welcomeVC.person = person
            }
            
            if let personalInfoNC = viewController as?
                UINavigationController {
                let personalVC = personalInfoNC.topViewController as? PersonalInfoViewController
                personalVC?.person = person
            }
            
        })
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: IB Actions
    @IBAction func didTappedForgot(sender: UIButton!) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user) 😉")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    //MARK: Private Methods
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default){ _ in
            completion?()
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

