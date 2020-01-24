//
//  EasyButtonViewController.swift
//  EasyButton
//
//  Created by Dakota Kim on 1/24/20.
//  Copyright © 2020 Dakota Kim. All rights reserved.
//

import UIKit
import AVFoundation

class EasyButtonViewController: UIViewController {
    
    let easyButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupEasyButton()
    }
    
    private func setupEasyButton() {
        easyButton.setBackgroundImage(#imageLiteral(resourceName: "easy_button"), for: .normal)
        easyButton.imageView?.contentMode = .scaleAspectFit
        
        view.addSubview(easyButton)
        setupEasyButtonConstraints()
    }
    
    private func setupEasyButtonConstraints() {
        easyButton.translatesAutoresizingMaskIntoConstraints = false
        
        easyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        easyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        easyButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc private func buttonTapped() {
        
    }
}
