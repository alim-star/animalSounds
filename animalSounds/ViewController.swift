//
//  ViewController.swift
//  animalSounds
//
//  Created by Muhammad Ali on 2022-01-04.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    
    @IBAction func keyPressed(_ sender: UIButton)
    {
        
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String)
        {
    let url = Bundle.main.url(forResource: soundName, withExtension: "wav")!
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.prepareToPlay()
        audioPlayer.play()

        }
    
}



