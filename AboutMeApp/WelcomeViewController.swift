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
    
    //MARK: Variables
    var userName = ""
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = "Welcome, \(userName)!"
        setGradientBackground()
    }
    
    //MARK: Private methods
    private func setGradientBackground() {
        guard let colorTop = UIColor(named: "ColorTop")?.cgColor else {return}
        guard let colorBottom = UIColor(named: "ColorBottom")?.cgColor else {return}
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
}
