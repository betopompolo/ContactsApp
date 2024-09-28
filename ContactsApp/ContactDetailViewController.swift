//
//  ViewController.swift
//  ContactsApp
//
//  Created by Adalberto Nassu Pompolo on 21/09/24.
//

import UIKit

let mockContact = Contact(
    name: "Maria Gabriela Mendes",
    phone: "1-770-736-9999",
    email: "f.nassu@gmail.com",
    companyName: "iOS Lab"
)


class ContactDetailViewController: UIViewController {
    @IBOutlet weak var initialsCircle: UIView!
    @IBOutlet weak var initialsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialsCircle.layer.borderWidth = 1
        initialsCircle.layer.borderColor = UIColor.white.cgColor
        
        initialsLabel.text = getInitials(
            from: mockContact.name
        )
        nameLabel.text = mockContact.name
        phoneLabel.text = mockContact.phone
        emailLabel.text = mockContact.email
        companyLabel.text = mockContact.companyName
        
    }
    
    private func getInitials(from name: String) -> String {
        let words = name.split(separator: " ")
        guard let firstName = words.first,
              let lastName = words.last else {
            return ""
        }
        
        guard let firstChar = firstName.first?.description,
              let lastChar = lastName.first?.description else {
            return ""
        }
        
        return firstChar + lastChar
    }
}

