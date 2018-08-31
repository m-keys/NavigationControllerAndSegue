//
//  ViewController.swift
//  NavigationControllerAndSegue
//
//  Created by Александр Макаров on 30.08.18.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.placeholder = "Login"
        passwdTextField.placeholder = "Password "
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DVC = segue.destination as! SecondViewController
        DVC.textOfFirstLabel = loginTextField.text!
        DVC.textOfSecondLabel = passwdTextField.text!
        if let titleButtonLogin = (sender as? UIButton)?.titleLabel?.text {
            DVC.textOfFirstLabel = titleButtonLogin
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if loginTextField.text != "" && passwdTextField.text != "" {
            performSegue(withIdentifier: "showSecondVC", sender: nil)
        } else {
            errorLabel.text = "Заполните поля Логин и Пароль"
        }
        loginTextField.text = ""
        passwdTextField.text = ""
    }
    
    @IBAction func forgottenLoginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showSecondVC", sender: sender)
    }
    
    @IBAction func forgottenPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showSecondVC", sender: sender)
    }
    
}

