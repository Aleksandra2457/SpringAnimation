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
    
    @IBOutlet var animationPresetLabel: UILabel!
    @IBOutlet var animationCurveLabel: UILabel!
    @IBOutlet var animationForceLabel: UILabel!
    @IBOutlet var animationDurationLabel: UILabel!
    @IBOutlet var animationDelayLabel: UILabel!

    // MARK: - Private Properties
    var animation = Animation.returnRandomAnimation()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextToLabels(with: animation)
    }

    // MARK: - IB Actions
    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
        startAnimation()
        setTextToLabels(with: animation)
        animation = Animation.returnRandomAnimation()
        sender.setTitle("Run \(animation.preset.rawValue)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func setTextToLabels(with animation: Animation) {
        animationPresetLabel.text = "Preset: \(animation.preset.rawValue)"
        animationCurveLabel.text = "Curve: \(animation.curve.rawValue)"
        animationForceLabel.text = "Force: \(string(from: animation.force))"
        animationDurationLabel.text = "Duration: \(string(from: animation.duration))"
        animationDelayLabel.text = "Delay: \(string(from: animation.delay))"
    }
    
    private func string(from value: Double) -> String {
        String(format: "%.2f", value)
    }
    
    private func startAnimation() {
        animatedView.animation = animation.preset.rawValue
        animatedView.curve = animation.curve.rawValue
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
    }
    
}

