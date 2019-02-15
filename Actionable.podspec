#
# Be sure to run `pod lib lint Actionable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Actionable'
  s.version          = '0.0.1'
  s.summary          = 'A cleaner delegation pattern for iOS.'

  s.description      = <<-DESC
    Actionable use code generation to give you the benefits of matching the style of builtin iOS delegate protocols with less boilerplate and tedious maintenance.
  DESC

  s.homepage         = 'https://github.com/Raizlabs/Actionable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Connor Neville' => 'cneville@rightpoint.com' }
  s.source           = { :git => 'https://github.com/Raizlabs/Actionable.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/**/*'
  s.resources = ['actionable', 'Resources/**/*']
  s.dependency 'Sourcery'
  s.swift_version = '4.2'
end
