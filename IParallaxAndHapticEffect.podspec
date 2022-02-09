#
# Be sure to run `pod lib lint IParallaxAndHapticEffect.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IParallaxAndHapticEffect'
  s.version          = '0.2.0'
  s.summary          = '✨ Super easy Parallax and Haptic Effect.'
  s.description      = <<-DESC

✨ This library can be used for easy use of 'Parallax' and 'Haptic' effects.
Custom 3D Parallax and Haptic effect are provided.
It is easy to create an interactive UX/UI with excellent performance.
                       DESC

  s.homepage         = 'https://github.com/Omilr/IParallaxAndHapticEffect'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Omilr' => 'leo.algodev@gmail.com' }
  s.source           = { :git => 'https://github.com/Omilr/IParallaxAndHapticEffect.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.frameworks = 'UIKit'
  s.source_files = 'IParallaxAndHapticEffect/Core/**/*'
end
