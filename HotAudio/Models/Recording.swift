//
//  Recording.swift
//  HotAudio
//
//  Created by Ronald Chan on 7/16/18.
//  Copyright © 2018 Richard Wang. All rights reserved.
//

import Foundation
class Recording {

    static func calculateAttractiveness(hertz: Double) -> Int {
        var attractivePercentage:Int = 0
        if hertz == 96.00 {
            attractivePercentage = 100
        } else if hertz > 180 {
            attractivePercentage = 0
        } else if hertz < 60 {
            attractivePercentage = 0
        } else if hertz > 96.00 {
            attractivePercentage = Int ((hertz - 96) / 84 * 100)
        } else if hertz < 96.00 {
            attractivePercentage = Int ((96 - hertz) / 36 * 100)
        }
        return attractivePercentage
    }
    
}
