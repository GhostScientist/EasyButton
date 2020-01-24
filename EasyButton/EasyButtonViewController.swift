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
    
    var audioPlayer : AVAudioPlayer?
    
    let easyButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupEasyButton()
    }
    
    private func setupEasyButton() {
        easyButton.setBackgroundImage(#imageLiteral(resourceName: "easy_button"), for: .normal)
        easyButton.imageView?.contentMode = .scaleAspectFit
        easyButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
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
        UIView.animate(withDuration: 0.05,
        animations: {
            self.easyButton.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
        completion: { _ in
            UIView.animate(withDuration: 0.05) {
                self.easyButton.transform = CGAffineTransform.identity
            }
        })
        
        playSound()
    }
    
    private func playSound() {
        guard let pathToAudio = Bundle.main.path(forResource: "that_was_easy", ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: pathToAudio)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Could not play audio")
        }
    }
}
