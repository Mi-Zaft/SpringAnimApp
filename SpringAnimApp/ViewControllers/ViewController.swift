//
//  ViewController.swift
//  SpringAnimApp
//
//  Created by Максим Евграфов on 24.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var labelsBlockView: SpringView!

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var nextAnimation = Animation.getNextAnimation()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startAnimation(animation: nextAnimation)
    }

    @IBAction func runButtonDidTapped(_ sender: UIButton) {
        startAnimation(animation: nextAnimation)
        
        sender.setTitle(nextAnimation.preset, for: .normal)
    }
}

// MARK: - Private Methods
private extension ViewController {
    func startAnimation(animation: Animation) {
        labelsBlockView.animation = animation.preset
        labelsBlockView.curve = animation.curve
        labelsBlockView.force = animation.force
        labelsBlockView.duration = animation.duration
        labelsBlockView.delay = animation.delay
        labelsBlockView.animate()
        
        setupUI(animation: animation)
        
        nextAnimation = Animation.getNextAnimation()
    }
    
    func setupUI(animation: Animation) {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
}

