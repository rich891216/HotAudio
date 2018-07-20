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
    var score:Double? { get set }
    var message:String? { get set }
    func transferResults()->Int
}
