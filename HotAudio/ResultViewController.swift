//
//  ResultViewController.swift
//  HotAudio
//
//  Created by Richard Wang on 7/16/18.
//  Copyright © 2018 Richard Wang. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    weak var delegate:ResultViewControllerDelegate?
    var recording:Recording?
    let responses:[String]=["Wow your voice is beautiful",
                            "Very nice but Morgan Freeman exists",
                            "Sounds like a regular human being",
                            "Have you ever thought about talking through a voice changer?",
                            "Can you stop"]
    var averageFrequency:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAverage()
        print(averageFrequency)
        var score=Recording.calculateAttractiveness(hertz: averageFrequency)
        percentageLabel!.text = "\(score)%"
        var response:String
        if (score>80) {
            response=responses[0]
        }
        else if (score>60) {
            response=responses[1]
        }
        else if (score>40) {
            response=responses[2]
        }
        else if (score>20) {
            response=responses[3]
        }
        else {
            response=responses[4]
        }
        resultLabel.text=response
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func getAverage() {
        averageFrequency = RecordingViewController.average()
    }
    
}
