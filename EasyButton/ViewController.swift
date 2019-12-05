//
//  ViewController.swift
//  EasyButton
//
//  Created by Dakota Kim on 10/27/19.
//  Copyright © 2019 Dakota Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var easyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func easyButtonTapped(_ sender: Any) {
        print("That was easy!")
    }
    
}

