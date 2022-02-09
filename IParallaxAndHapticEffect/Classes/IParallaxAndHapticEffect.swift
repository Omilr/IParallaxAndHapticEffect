//
//  IParallaxAndHapticEffect.swift
//  IParallaxAndHapticEffect
//
//  Created by Omilr on 02/09/2022.
//  Copyright (c) 2022 Omilr. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
public class IParallaxAndHapticEffect: NSObject {
    
    static let shared = IParallaxAndHapticEffect()
    
    // MARK: - Parallax Effect
    
    enum keyPath {
        static let centerX = "center.x"
        static let centerY = "center.y"
    }
    
    enum Axis {
        case horizontal
        case vertical
        case multi
    }
    
    
    internal func setParallax(view: [UIView], axis: [Axis], power: Float) {
        switch axis {
        case [.horizontal]:
            setHorizontalParallax(view: view, power: power)
        case [.vertical]:
            setVerticalParallax(view: view, power: power)
        case [.multi]:
            setMultiParallax(view: view, power: power)
        default:
            setMultiParallax(view: view, power: power)
        }
    }
    
    
    private func setHorizontalParallax(view: [UIView], power: Float) {
        DispatchQueue.main.async {
            let horizontal = UIInterpolatingMotionEffect(keyPath: keyPath.centerX, type: .tiltAlongHorizontalAxis)
            horizontal.maximumRelativeValue = power
            horizontal.minimumRelativeValue = -power
            view.forEach { $0.addMotionEffect(horizontal)}
        }
    }
    
    
    private func setVerticalParallax(view: [UIView], power: Float) {
        DispatchQueue.main.async {
            let vertical = UIInterpolatingMotionEffect(keyPath: keyPath.centerY, type: .tiltAlongVerticalAxis)
            vertical.maximumRelativeValue = power
            vertical.minimumRelativeValue = -power
            view.forEach { $0.addMotionEffect(vertical) }
        }
    }
    
    
    private func setMultiParallax(view: [UIView], power: Float) {
        DispatchQueue.main.async {
            let vertical = UIInterpolatingMotionEffect(keyPath: keyPath.centerY, type: .tiltAlongVerticalAxis)
            vertical.maximumRelativeValue = power
            vertical.minimumRelativeValue = -power
            
            let horizontal = UIInterpolatingMotionEffect(keyPath: keyPath.centerX, type: .tiltAlongHorizontalAxis)
            horizontal.maximumRelativeValue = power
            horizontal.minimumRelativeValue = -power

            let motionGroup = UIMotionEffectGroup()
            motionGroup.motionEffects = [vertical, horizontal]
            view.forEach { $0.addMotionEffect(motionGroup) }
        }
    }

    // MARK: - Haptic Effect
    
    enum HapticType {
        case light
        case medium
        case heavy
        case soft
        case rigid
        case selection
        case warring
        case success
        case error
    }
    
    internal func setHaptic(type: HapticType) {
        switch type {
        case .light:
            setHaptic_light()
        case .medium:
            setHaptic_medium()
        case .heavy:
            setHaptic_heavy()
        case .soft:
            setHaptic_soft()
        case .rigid:
            setHaptic_rigid()
        case .selection:
            setHaptic_selection()
        case .warring:
            setHaptic_warring()
        case .success:
            setHaptic_success()
        case .error:
            setHaptic_error()
        }
    }
    
    
    internal func setCustomHaptic(power: CGFloat) {
        setHaptic_custom(power: power)
    }
    
    
    private func setHaptic_custom(power: CGFloat) {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator()
            generator.prepare()
            generator.impactOccurred(intensity: power)
        }
    }
    
    
    private func setHaptic_light() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    private func setHaptic_medium() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    private func setHaptic_heavy() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    private func setHaptic_soft() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .soft)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    private func setHaptic_rigid() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .rigid)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    private func setHaptic_selection() {
        DispatchQueue.main.async {
            let generater = UISelectionFeedbackGenerator()
            generater.prepare()
            generater.selectionChanged()
        }
    }
    
    
    private func setHaptic_warring() {
        DispatchQueue.main.async {
            let generater = UINotificationFeedbackGenerator()
            generater.prepare()
            generater.notificationOccurred(.warning)
        }
    }
    
    
    private func setHaptic_success() {
        DispatchQueue.main.async {
            let generater = UINotificationFeedbackGenerator()
            generater.prepare()
            generater.notificationOccurred(.warning)
        }
    }
    
    
    private func setHaptic_error() {
        DispatchQueue.main.async {
            let generater = UINotificationFeedbackGenerator()
            generater.prepare()
            generater.notificationOccurred(.warning)
        }
    }
}


