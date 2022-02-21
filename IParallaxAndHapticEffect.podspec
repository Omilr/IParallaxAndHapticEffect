#
# Be sure to run `pod lib lint IParallaxAndHapticEffect.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IParallaxAndHapticEffect'
  s.version          = '0.6.0'
  s.summary          = '✨ Super easy Parallax and Haptic Effect.'
  s.description      = <<-DESC

✨ This library helps you easily use the 'Parallax' and 'Haptic' effects.
Customized 3D parallax and haptic effects are provided.
It is easy to create high-performance interactive UX/UI.
                       DESC

  s.homepage         = 'https://github.com/Omilr/IParallaxAndHapticEffect'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Omilr' => 'leo.algodev@gmail.com' }
  s.source           = { :git => 'https://github.com/Omilr/IParallaxAndHapticEffect.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.frameworks = 'UIKit'
  s.source_files = 'Sources/IParallaxAndHapticEffect/**/*'
end
