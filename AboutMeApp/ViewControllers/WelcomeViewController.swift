//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Ewgeniy Izyurov on 10.10.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    //MARK: Variables
    var userName: String!
    var person: User!
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = "Welcome, \(userName!)!"
        nameLabel.text = "My name is \(person.person.name) \(person.person.lastName)."
        
        setGradientBackground()
    }
    
}

// MARK: Custom background for ViewController
extension UIViewController {
    func setGradientBackground() {
        guard let colorTop = UIColor(named: "ColorTop")?.cgColor else {return}
        guard let colorBottom = UIColor(named: "ColorBottom")?.cgColor else {return}
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        view.layer.insertSublayer(gradientLayer, at:0)
    }
}
