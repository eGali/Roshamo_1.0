//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Edgar on 7/8/16.
//  Copyright © 2016 Edgar. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerChoice: Int?
    var compChoice: Int?

    @IBOutlet weak var winText: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBAction func playAgain(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var resultText: UILabel!
    func runGame(){
        var player = "some"
        var comp = "some"
        var displayImage = "some"
        switch(playerChoice){
        case (1?):
            player = "paper"
        case (2?):
            player = "scissor"
        default:
            player = "rock"
        }
        switch(compChoice){
        case (1?):
            comp = "paper"
        case (2?):
            comp = "scissor"
        default:
            comp = "rock"
        }
        
        switch(playerChoice, compChoice){
        case (1?, 3?), (2?, 1?), (3?, 2?):
            resultText.text = "You Win!"
            winText.text = "Your \(player) beats \(comp)!"
            displayImage = "\(player)Wins"
        case (1?, 1?), (2?, 2?), (3?, 3?):
            resultText.text = "Its a tie!"
            winText.text = ""
            displayImage = "tie"
        default:
            resultText.text = "You lose!"
            winText.text = "\(comp) beats your \(player)!"
            displayImage = "\(comp)Wins"
        }
        
        resultImage.image = UIImage(named: displayImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
