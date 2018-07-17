//
//  Recording.swift
//  HotAudio
//
//  Created by Ronald Chan on 7/16/18.
//  Copyright © 2018 Richard Wang. All rights reserved.
//

import Foundation
class Recording {
    var attractivePercentage : Int
    init(attractivePercentage : Int) {
        self.attractivePercentage = attractivePercentage
    }
    func calculateAttractiveness(hertz: Double) -> Int {
        if hertz == 96.00 {
            
            attractivePercentage = 100
        }
        if hertz > 96.00 {
            attractivePercentage = Int ((hertz - 96) / 84 * 100)
        }
        if hertz < 96.00 {
            attractivePercentage = Int ((96 - hertz) / 36 * 100)
        }
        return attractivePercentage
    }
    
}
