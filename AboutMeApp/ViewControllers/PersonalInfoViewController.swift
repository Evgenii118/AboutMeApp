//
//  HobbyViewController.swift
//  AboutMeApp
//
//  Created by Ewgeniy Izyurov on 21.10.2024.
//

import UIKit

final class PersonalInfoViewController: UIViewController {
    //MARK: IB Outlets
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastName: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    
    //MARK: Variables
    var person: User!
    
    //MARK: Life Cycle view
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        
        fillInLabels()
    }
    
    //MARK: Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let hobbyVC = segue.destination as? HobbyViewController {
                hobbyVC.person = person
        }
    }
    
    //MARK: Private methods
    private func fillInLabels() {
        nameLabel.text = person.person.name
        lastName.text = person.person.lastName
        ageLabel.text = String(person.person.age)
        companyLabel.text = person.person.company
        postLabel.text = person.person.post
    }
}
