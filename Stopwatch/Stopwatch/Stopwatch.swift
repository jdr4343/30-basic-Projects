//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by 신지훈 on 2021/08/12.
//

import Foundation

class Stopwatch: NSObject {
    var counter: Double
    var timer: Timer
    
    override init() {
        counter = 0.0
        timer = Timer()
    }
}
