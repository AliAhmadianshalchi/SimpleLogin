//
//  ViewController.swift
//  SimpleLogin
//
//  Created by Ali Ahmadian shalchi on 16/07/2021.
//

import UIKit

protocol UserProfileViewProtocol {

    func setName(_ name: String)
    func setMobile(_ mobile: String)
    func setEmail(_ email: String)
    func setAge(_ age: Int)
    func setGender(atIndex index: Int)
    func getName() -> String
    func getMobileNumber() -> String
    func getEmail() -> String
    func getAge() -> Int
    func getGenderIndex() -> Int
    func showAlert(withTitle title: String, andErrorMessage message: String)
}

class ViewController: UIViewController , UserProfileViewProtocol {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var saveButton: UIButton!
    
    var updateProfilePresenter: UpdateProfilePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = LocalStorage.default.user
                updateProfilePresenter = UpdateProfilePresenter(user: user, viewController: self)
        
    }
    
    
    func setName(_ name: String) {
            self.nameTextField.text = name
        }
        
        func setMobile(_ mobile: String) {
            self.mobileNumberTextField.text = mobile
        }
        
        func setEmail(_ email: String) {
            self.emailTextField.text = email
        }
        
        func setAge(_ age: Int) {
            self.ageTextField.text = String(age)
        }
        
        func setGender(atIndex index: Int) {
            self.genderSegmentedControl.selectedSegmentIndex = index
        }
        
        func getName() -> String {
            return self.nameTextField.text ?? ""
        }
        
        func getMobileNumber() -> String {
            return self.mobileNumberTextField.text ?? ""
        }
        
        func getEmail() -> String {
            return self.emailTextField.text ?? ""
        }
        
        func getAge() -> Int {
            return Int(self.ageTextField.text ?? "0") ?? 0
        }
        
        func getGenderIndex() -> Int {
            return self.genderSegmentedControl.selectedSegmentIndex
        }
        
        func showAlert(withTitle title: String, andErrorMessage message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        
        self.updateProfilePresenter.saveButtonClicked()
        
    }
    
}

