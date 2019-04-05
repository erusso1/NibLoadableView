#
# Be sure to run `pod lib lint NibLoadableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NibLoadableView'
  s.version          = '0.1.0'
  s.summary          = 'A UIView parent class to make XIB loading easy.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Make any of your UIView subclasses XIB loadable by setting NibLoadableView as your parent class, creating a .xib file with the same name as your view class, asigning the File Owner, and build you UI. Then in your View Controller, drag a blank UIView and set the custom class to your NibLoadableView subclass.'

  s.homepage         = 'https://github.com/erusso1/NibLoadableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'erusso1' => 'ephraim.s.russo@gmail.com' }
  s.source           = { :git => 'https://github.com/erusso1/NibLoadableView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'

  s.source_files = 'NibLoadableView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NibLoadableView' => ['NibLoadableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
