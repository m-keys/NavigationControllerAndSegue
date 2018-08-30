//
//  SecondViewController.swift
//  NavigationControllerAndSegue
//
//  Created by Александр Макаров on 30.08.18.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    var textOfFirstLabel = ""
    var textOfSecondLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(textOfFirstLabel) \(textOfSecondLabel)"

        firstLabel.text = textOfFirstLabel
        secondLabel.text = textOfSecondLabel
    }
    
}
