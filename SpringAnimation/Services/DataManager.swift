//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Александра Лесовская on 15.04.2022.
//

import Foundation
import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
    
}
