//
//  IHapticEffect.swift
//  IParallaxAndHapticEffect
//
//  Created by LEO YANG on 2022/02/09.
//

import UIKit


// - MARK: - Haptic Effect Enum
/** Type for generating Haptic events. */
public enum HapticType {
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


@available(iOS 13.0, *)
public final class IHapticEffect: NSObject {
    
    // - MARK: - IHapticEffect Instance
    private static var sharedIHaptic: IHapticEffect = {
        let sharedIHaptic = IHapticEffect()
        return sharedIHaptic
    }()
    
    
    // - MARK: - About Parallax Effect
    public class func shared() -> IHapticEffect {
        return sharedIHaptic
    }
    
    
    /** This function generates haptic events of 9 types. */
    public func setHaptic(type: HapticType) {
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
    
    
    /** This function generates repetitive haptic events.  The number of iterations can be adjusted using the count parameter. */
    public func setRepeatHaptic(type: HapticType, count: Int) {
        for i in (0..<count) {
            DispatchQueue.main.asyncAfter(deadline: .now() + CGFloat(i)) {
                self.setHaptic(type: type)
            }
        }
    }
    
    
    /** This function generates a delayed haptic event. The delay time can be adjusted using the delay time parameter. */
    public func setDelayHaptic(type: HapticType, delayTime: CGFloat) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delayTime) {
            self.setHaptic(type: type)
        }
    }
    
    
    /** This function generates a customized haptic event. The power can be adjusted using the power parameter between 0 and 1 (CGFloat). */
    public func setCustomHaptic(power: CGFloat) {
        setHaptic_custom(power: power)
    }
    
    
    /** This function generates a custom haptic event. */
    private func setHaptic_custom(power: CGFloat) {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator()
            generator.prepare()
            generator.impactOccurred(intensity: power)
        }
    }
    
    
    /** This function generates a light haptic event. */
    private func setHaptic_light() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    /** This function generates a medium haptic event. */
    private func setHaptic_medium() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    /** This function generates a heavy haptic event. */
    private func setHaptic_heavy() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    /** This function generates a soft haptic event. (iOS 13.0, *) */
    private func setHaptic_soft() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .soft)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    /** This function generates a rigid haptic event. (iOS 13.0, *) */
    private func setHaptic_rigid() {
        DispatchQueue.main.async {
            let generator = UIImpactFeedbackGenerator(style: .rigid)
            generator.prepare()
            generator.impactOccurred()
        }
    }
    
    
    /** This function generates a selection haptic event. */
    private func setHaptic_selection() {
        DispatchQueue.main.async {
            let generater = UISelectionFeedbackGenerator()
            generater.prepare()
            generater.selectionChanged()
        }
    }
    
    
    /** This function generates a warring haptic event. */
    private func setHaptic_warring() {
        DispatchQueue.main.async {
            let generater = UINotificationFeedbackGenerator()
            generater.prepare()
            generater.notificationOccurred(.warning)
        }
    }

    
    /** This function generates a success haptic event. */
    private func setHaptic_success() {
        DispatchQueue.main.async {
            let generater = UINotificationFeedbackGenerator()
            generater.prepare()
            generater.notificationOccurred(.warning)
        }
    }
    
    
    /** This function generates a error haptic event. */
    private func setHaptic_error() {
        DispatchQueue.main.async {
            let generater = UINotificationFeedbackGenerator()
            generater.prepare()
            generater.notificationOccurred(.warning)
        }
    }
}
