//
//  Animation.swift
//  SpringAnimApp
//
//  Created by Максим Евграфов on 24.06.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getNextAnimation() -> Animation {
        let animation = Animation(
            preset: Presets.allCases.randomElement()!.rawValue,
            curve: Curves.allCases.randomElement()!.rawValue,
            force: Double.random(in: 0.8...1.3),
            duration: Double.random(in: 0.8...1.3),
            delay: Double.random(in: 0.8...1.3)
        )
        
        return animation
    }
}

extension Animation {
    enum Presets: String, CaseIterable {
        case pop
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case fall
        case shake
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
    }
    
    enum Curves: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
    }
}
