//
//  IParallaxEffect.swift
//  IParallaxAndHapticEffect
//
//  Created by LEO YANG on 2022/02/09.
//

import UIKit


// - MARK: - Parallax Effect Enum
/** Type for generating Parallax effect. */
public enum Axis {
    case horizontal
    case vertical
    case multi
}


public enum keyPath {
    static let centerX = "center.x"
    static let centerY = "center.y"
}


public final class IParallaxEffect: NSObject {
    
    // - MARK: - Make IParallaxEffect Instance
    private static var sharedParallax: IParallaxEffect = {
        let sharedParallax = IParallaxEffect()
        return sharedParallax
    }()
    
    
    // - MARK: - About Parallax Effect
    public class func shared() -> IParallaxEffect {
        return sharedParallax
    }
    
    
    /** This function generates a 'customized parallax effect' on the 'UIView' object.  View objects can be added using the array sequence parameter. The power can be adjusted using the power parameter. */
    public func setParallax(view: [UIView], axis: [Axis], power: Float) {
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
    
    
    /** This function generates a 'horizontal parallax effect' on the 'UIView' object.  View objects can be added using the array sequence parameter. The power can be adjusted using the power parameter. */
    private func setHorizontalParallax(view: [UIView], power: Float) {
        DispatchQueue.main.async {
            let horizontal = UIInterpolatingMotionEffect(keyPath: keyPath.centerX, type: .tiltAlongHorizontalAxis)
            horizontal.maximumRelativeValue = power
            horizontal.minimumRelativeValue = -power
            view.forEach { $0.addMotionEffect(horizontal) }
        }
    }
    
    
    /** This function generates a 'vertical parallax effect' on the 'UIView' object.  View objects can be added using the array sequence parameter. The power can be adjusted using the power parameter. */
    private func setVerticalParallax(view: [UIView], power: Float) {
        DispatchQueue.main.async {
            let vertical = UIInterpolatingMotionEffect(keyPath: keyPath.centerY, type: .tiltAlongVerticalAxis)
            vertical.maximumRelativeValue = power
            vertical.minimumRelativeValue = -power
            view.forEach { $0.addMotionEffect(vertical) }
        }
    }
    
    
    /** This function generates 'horizontal and vertical parallax effects' on the 'UIView' object.  View objects can be added using the array sequence parameter. The power can be adjusted using the power parameter. */
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
}
