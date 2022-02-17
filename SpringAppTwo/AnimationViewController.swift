//
//  AnimationViewController.swift
//  SpringAppTwo
//
//  Created by Никита Горбунов on 17.02.2022.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet weak var animationSpringView: SpringView!
    @IBOutlet weak var animationSpringLabel: SpringLabel!
    @IBOutlet weak var animationButton: SpringButton!
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationSpringLabel.text = animation.specification
        
    }
    

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        animationSpringLabel.text = animation.specification
        
        animationSpringLabel.animation = "swing"
        animationSpringLabel.animate()
        
        animationSpringView.animation = animation.preset
        animationSpringView.curve = animation.curve
        animationSpringView.force = CGFloat(animation.force)
        animationSpringView.duration = CGFloat(animation.duration)
        animationSpringView.delay = CGFloat(animation.delay)
        animationSpringView.animate()
        
        sender.animation = "pop"
        sender.force = 1
        sender.animate()
        
        animation = Animation.getAnimation()
    }
    
}
