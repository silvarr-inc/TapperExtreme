//
//  ViewController.swift
//  Tapper Extreme
//
//  Created by Julian Silva on 2016-05-04.
//  Copyright © 2016 Silvarr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            logoImage.hidden = true
            playButton.hidden = true
            howManyTapsText.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }

    func restartGame() {
        maxTaps = 0
        howManyTapsText.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsText.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
         tapsLabel.text = "\(currentTaps) Taps"
    }

}

