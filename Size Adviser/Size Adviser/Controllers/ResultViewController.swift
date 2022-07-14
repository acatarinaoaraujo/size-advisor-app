//
//  ResultViewController.swift
//  Size Calculator
//
//  Created by Ana Araujo on 143/07/2022.
//  Copyright © 2022 Ana Araujo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var chest: String?
    var waist: String?
    var hips: String?

    
    @IBOutlet weak var chestLabel: UILabel!
    @IBOutlet weak var waistLabel: UILabel!
    @IBOutlet weak var hipsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chestLabel.text = chest
        waistLabel.text = waist
        hipsLabel.text = hips
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
