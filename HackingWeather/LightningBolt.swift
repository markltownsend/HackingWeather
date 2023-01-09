//
//  LightningBolt.swift
//  HackingWeather
//
//  Created by Mark Townsend on 1/5/23.
//

import Foundation

class LightningBolt {
    var points = [CGPoint]()
    var width: Double
    var angle: Double

    init(start: CGPoint, width: Double, angle: Double) {
        points.append(start)
        self.width = width
        self.angle = angle
    }
}
