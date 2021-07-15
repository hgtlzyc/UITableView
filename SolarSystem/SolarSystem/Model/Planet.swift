//
//  Planet.swift
//  SolarSystem
//
//  Created by lijia xu on 7/15/21.
//

import Foundation

class Planet {
    let planetName: String
    let planetImageName: String
    let planetDiameter: Int
    let planetDayLength: Double
    let maxMillionKMsFromSun: Double
    
    init(planetName: String, planetImageName: String, planetDiameter: Int, planetDayLength: Double, maxMillionKMsFromSun: Double) {
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDiameter = planetDiameter
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
}
