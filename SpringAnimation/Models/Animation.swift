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
    
    static func returnParametersForAnimation() -> Animation {
        return Animation(
            preset: Spring.AnimationPreset.allCases.randomElement() ?? .fadeIn,
            curve: Spring.AnimationCurve.allCases.randomElement() ?? .easeIn,
            force: Double.random(in: 0.2...1),
            duration: Double.random(in: 0.5...3),
            delay: Double.random(in: 0.5...1.5))
    }
}
