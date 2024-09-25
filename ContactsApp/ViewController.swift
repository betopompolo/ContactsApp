//
//  ViewController.swift
//  ContactsApp
//
//  Created by Adalberto Nassu Pompolo on 21/09/24.
//

import UIKit

struct Contact {
    var name: String
    var phone: String
    var email: String
    var companyName: String
}

let mockContact = Contact(
    name: "Adalberto Nassu Pompolo",
    phone: "1-770-736-8031",
    email: "beto.nassu@gmail.com",
    companyName: "Agile Engine"
)

class ViewController: UIViewController {
    @IBOutlet weak var initialsCircle: UIView!
    @IBOutlet weak var initialsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialsCircle.layer.borderWidth = 1
        initialsCircle.layer.borderColor = UIColor.white.cgColor
        initialsLabel.text = getInitials(from: mockContact.name)
        
    }
    
    private func getInitials(from name: String) -> String {
        let words = name.split(separator: " ")
        
        let firstName = words.first!.description
        let lastName = words.last!.description
        
        return firstName.first!.description + lastName.first!.description
    }
}

