//
//  DataManager.swift
//  SpringAppTwo
//
//  Created by Никита Горбунов on 17.02.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
