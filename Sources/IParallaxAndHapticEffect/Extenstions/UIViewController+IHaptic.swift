//
//  UIViewController+IHaptic.swift
//  IParallaxAndHapticEffect
//
//  Created by LEO YANG on 2022/02/09.
//

import UIKit


extension UIViewController {
    @available(iOS 13.0, *)
    /** Presents a view controller modally with Normal Haptic (9 types). */
    public func present(_ presentedViewController: UIViewController, animated flag: Bool, hapticType: HapticType, completion: (() -> Void)? = nil) {
        present(presentedViewController, animated: flag, completion: completion)
        IHapticEffect.shared().setHaptic(type: hapticType)
    }
    
    /** Presents a view controller modally with Delayed Haptic  (9 types). */
    public func present(_ presentedViewController: UIViewController, animated flag: Bool, hapticType: HapticType, delayTime: CGFloat, completion: (() -> Void)? = nil) {
        present(presentedViewController, animated: flag, completion: completion)
        IHapticEffect.shared().setDelayHaptic(type: hapticType, delayTime: delayTime)
    }
    
    /** Presents a view controller modally with Repeated Haptic (9 types).  */
    public func present(_ presentedViewController: UIViewController, animated flag: Bool, hapticType: HapticType, count: Int, completion: (() -> Void)? = nil) {
        present(presentedViewController, animated: flag, completion: completion)
        IHapticEffect.shared().setRepeatHaptic(type: hapticType, count: count)
    }
}
