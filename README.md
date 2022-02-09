![IParallaxAndHapticEffectMain](https://user-images.githubusercontent.com/81509766/153163501-09b616cc-0174-4699-be8e-88946da40255.png)

# IParallaxAndHapticEffect
✨ Super easy Parallax and Haptic Effect. <br/>
This library helps you easily use the 'Parallax' and 'Haptic' effects. <br/>
Customized 3D parallax and haptic effects are provided(High-performance interactive UX/UI). <br/>

[![Version](https://img.shields.io/cocoapods/v/IParallaxAndHapticEffect.svg?style=flat)](https://cocoapods.org/pods/IParallaxAndHapticEffect)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://cocoapods.org/pods/IParallaxAndHapticEffect)
[![Platform](https://img.shields.io/cocoapods/p/IParallaxAndHapticEffect.svg?style=flat)](https://cocoapods.org/pods/IParallaxAndHapticEffect)
[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
![iOS 13.0+](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)

<br/>

# Table of contents
* [🚀 How to use IParallaxEffect](#how-to-use-iparallax)
    1. [📍 IParallaxEffect : One line is everything](#one-line-is-everything)
* [🚀 How to use IHapticEffect](#how-to-use-ihaptic)
    1. [📍 IHapticEffect](#ihapticeffect)
    2. [📍 Dynamic Haptic](#ihapticeffect-dynamic-haptic)
* [🛠 Installation](#installation)
* [⚠️ Important](#important)
* [Contributing](#contributing)
* [Author](#author)
* [License](#license)

<br/>

## 🚀 How to use IParallax <a name="how-to-use-iparallax"></a>
First of all, you will need to import the IParallaxAndHapticEffect module.

```swift
import IParallaxAndHapticEffect
```
After that, it is necessary to think about which effect to use, the `Parallax effect` or the `Haptic effect`. <br/>
Each use is very easy.<br/>
First, let's look at 3 cases of using the parallax effect. Then think about how to use it for UI/UX later.

<br/>
The parallax effect can be applied to all objects inherited by 'UIView'. <br/>

`UIView`, `UIImageView`, `UIButton`, `UIProgressView`, `UISlider`, `UISwitch`, `UIStepper`, `UITextField`, `UILabel`, `UITextView`, `UITableView`, `UICollectionView`, `PickerView`, `Etc` <br/>

🪄 **Adding imagination can create magical effects.**
 
<br/>
<br/>
<br/>

| Examples |
| :----------: |
|![IParallaxAndHapticEffect_Example1](https://user-images.githubusercontent.com/81509766/153190916-9051f1df-3f0c-42df-acc1-6400104f2a11.gif)|
|![IParallaxAndHapticEffect_Example2](https://user-images.githubusercontent.com/81509766/153190871-93c0e117-0584-423d-a2f3-a78926a7a2d5.gif)|
|![IParallaxAndHapticEffect_Example3](https://user-images.githubusercontent.com/81509766/153190901-41090c79-5563-4632-9bde-f220f3ad148d.gif)|

<br/>

### 1. 📍 IParallaxEffect : One line is everything. <a name="one-line-is-everything"></a>
`IParallaxEffect`, that's all. <br/>
This function generates a 'customized parallax effect' on the 'UIView' object. View objects can be added using the array sequence parameter. The power can be adjusted using the power parameter.

```swift
IParallaxEffect.shared().setParallax(view: ['1'], axis: ['2'], power: '3')
```

#### Parameter '1' view: Your view that wants to apply the effect.

#### Parameter '2'
| axis |
| -------- |
| `.horizontal` |
| `.vertical` |
| `.multi` |

#### Parameter '3'
You can enter the intensity you want to use. (1 ~ 1000) <br/>
Here's the recommended intensity!
| Power | - |
| -------- | ---- |
| `30` | very slow | 
| `60` | slow |
| `90` | medium |
| `120` | fast |
| `150` | very fast |
| `180~` | SpaceX |

<br/>

---

<br/>

## 🚀 How to use IHapticEffect <a name="how-to-use-ihaptic"></a>
`IHapticEffect` basically provides all nine forms of system vibration. <br/>
Additionally, try other excellent vibration functions.


### 1. 📍 IHapticEffect <a name="ihapticeffect"></a>
`IHapticEffect`, that's all. <br/>
Create a vibration with a simple line. <br/>
This function generates haptic events of 9 types.

```swift
IHapticEffect.shared().setHaptic(type: '1')
```

#### Parameter '1'
| Haptic Type |
| -------- |
| `.light` |
| `.medium` |
| `.heavy` |
| `.soft` |
| `.rigid` |
| `.selection` |
| `.warring` |
| `.success` |
| `.error` |

<br/>

### 2. 📍 Dynamic Haptic <a name="ihapticeffect-dynamic-haptic"></a>

#### 2-1. Repeat Haptic
This function generates **repetitive haptic events**. <br/>
 The number of iterations can be adjusted using the count parameter('2').
```swift
IHapticEffect.shared().setRepeatHaptic(type: '1', count: '2')
```

#### 2-2. Delay Haptic
This function generates a **delayed haptic event**. <br/>
 The delay time can be adjusted using the delay time parameter('2').
```swift
IHapticEffect.shared().setDelayHaptic(type: '1', delayTime: '2')
```

#### 2-3. Custom Haptic
This function generates a **customized haptic event**. <br/>
 The power can be adjusted using the power parameter between **0 and 1** (CGFloat: '1').
```swift
IHapticEffect.shared().setCustomHaptic(power: '1')
```

#### 2-4. Presents with Haptic 1 
Presents a view controller modally with **Normal Haptic (9 types)**.
```swift
present(ViewController, animated: Bool, hapticType: '1', completion: '2')
```

#### 2-5. Presents with Haptic 2
Presents a view controller modally with **Delayed Haptic (9 types)**.
```swift
present(ViewController, animated: Bool, hapticType: '1', delayTime: '2', completion: '3')
```

#### 2-6. Presents with Haptic 3
Presents a view controller modally with **Repeated Haptic (9 types)**.
```swift
present(ViewController, animated: Bool, hapticType: '1', count: '2', completion: '3')
```

#### Presents with Haptic(Example)
**Alert**
```swift
let alertVC = UIAlertController(title: "Notice", message: "IParallaxAndHapticEffect", preferredStyle: .alert)
let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
alertVC.addAction(okAction)
present(alertVC, animated: true, hapticType: .heavy, count: 2, completion: nil)
```

**Present**
```swift
guard let vc = self.storyboard?.instantiateViewController(withIdentifier: VC2.identifier) as? VC2 else { return }
present(vc, animated: true, hapticType: .soft)
```

<br/>

## 🛠 Installation <a name="installation"></a>

### Cocoapods

IParallaxAndHapticEffect is available through CocoaPods. To install it, simply add the following line to your Podfile:

```ruby
pod 'IParallaxAndHapticEffect'
```

<br/>

## ⚠️ Important <a name="important"></a>
The Parallax & Haptic effect does not work in the simulator. <br/>
Therefore, it is recommended to test on a real device.


## Contributing <a name="contributing"></a>
Contributions are always welcome 🎉


## Author <a name="author"></a>
Omilr, leo.algodev@gmail.com


## License <a name="license"></a>
IParallaxAndHapticEffect is available under the MIT license. See the LICENSE file for more info.
