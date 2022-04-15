//
//  AnimationViewController.swift
//  SpringAnimation
//
//  Created by Александра Лесовская on 05.04.2022.
//

import UIKit
import Spring

class AnimationViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var animationDescriptionLabel: UILabel!

    // MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextToDescriptionLabel(with: animation)
    }

    // MARK: - IB Actions
    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
        startAnimation()
        setTextToDescriptionLabel(with: animation)
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func setTextToDescriptionLabel(with animation: Animation) {
        animationDescriptionLabel.text = animation.description
    }
    
    private func string(from value: Double) -> String {
        String(format: "%.2f", value)
    }
    
    private func startAnimation() {
        animatedView.animation = animation.name
        animatedView.curve = animation.curve
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
    }
    
}

