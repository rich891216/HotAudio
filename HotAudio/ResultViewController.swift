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
    
    @IBOutlet weak var resultDescription: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    weak var delegate:ResultViewControllerDelegate?
    var recording:Recording?
    var averageFrequency:Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func loadView() {
        recording=delegate?.transferResults()
        super.loadView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(getAverage(_:)), name: Notification.Name(rawValue: "stopRecording"), object: nil)
        
    }
    
    @objc func getAverage(_ notification: NSNotification) {
        averageFrequency = RecordingViewController.average()
    }
    
}
