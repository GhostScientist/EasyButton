//
//  ViewController.swift
//  EasyButton
//
//  Created by Dakota Kim on 10/27/19.
//  Copyright © 2019 Dakota Kim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var easyButton: UIButton!
    
    var audioPlayer : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func easyButtonTapped(_ sender: Any) {
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

