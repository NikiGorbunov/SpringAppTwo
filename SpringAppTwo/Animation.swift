//
//  Animation.swift
//  SpringAppTwo
//
//  Created by Никита Горбунов on 17.02.2022.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var specification: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0...3),
            duration: Float.random(in: 0...3),
            delay: 0.1
        )
    }
}
