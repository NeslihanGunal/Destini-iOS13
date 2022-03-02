//
//  ViewController.swift
//  Destini
//
//  Created by Neslihan Günal on 2.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        updateUI()
        
 
    }
    
    @IBAction func choicePressed(_ sender: UIButton) {
        
        storyBrain.getNextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    func updateUI(){
        
        storyLabel.text =  storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }


}

