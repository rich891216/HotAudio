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
    var averageFrequency:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAverage()
        print(averageFrequency)
        percentageLabel!.text = "\(Recording.calculateAttractiveness(hertz: averageFrequency))%"

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
