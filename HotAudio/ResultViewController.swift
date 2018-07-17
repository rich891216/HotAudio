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
    
}
