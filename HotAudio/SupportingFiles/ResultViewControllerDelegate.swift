//
//  ResultViewControllerDelegate.swift
//  HotAudio
//
//  Created by Ronald Chan on 7/17/18.
//  Copyright © 2018 Richard Wang. All rights reserved.
//

import Foundation
import UIKit
protocol ResultViewControllerDelegate:AnyObject {
    func transferResults(percentage:Double,message:String)
}
