//
//  HobbyViewController.swift
//  AboutMeApp
//
//  Created by Ewgeniy Izyurov on 22.10.2024.
//

import UIKit

final class HobbyViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    //MARK: Variables
    var person: User!
    
    //MARK: Life cycle view
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Увлечения \(person.person.name) \(person.person.lastName)"
        hobbyLabel.text = person.person.hobby
        
        setGradientBackground()
    }
  
}




