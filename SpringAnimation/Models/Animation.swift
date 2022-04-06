//
//  Animation.swift
//  SpringAnimation
//
//  Created by Александра Лесовская on 06.04.2022.
//

import Foundation
import Spring

struct Animation {
    
    let preset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
    static func returnRandomAnimation() -> Animation {
        Animation(
            preset: Spring.AnimationPreset.allCases.randomElement() ?? .fadeIn,
            curve: Spring.AnimationCurve.allCases.randomElement() ?? .easeIn,
            force: Double.random(in: 0.8...1.5),
            duration: Double.random(in: 0.5...2.5),
            delay: Double.random(in: 0.2...0.6))
    }
    
}
