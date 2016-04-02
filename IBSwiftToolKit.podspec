#
#  Be sure to run `pod spec lint IBSwiftToolKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "IBSwiftToolKit"
  s.version      = "0.0.8"
  s.summary      = "Here is my own toolbox written on Swift"

  s.description  = <<-DESC 
                  IBSwiftToolKit contains a lot useful extensions 
                  for most important classes from such frameworks 
                  as Swift, Foundation, CoreGraphics, UIKit.
                   DESC

  s.homepage     = "https://github.com/ivabra/IBSwiftToolKit"

  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author       = { "Ivan Brazhnikov" => "samsungpc239@gmail.com" }

  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  s.source       = { :git => "https://github.com/ivabra/IBSwiftToolKit.git", :tag => "v#{s.version}" }

  s.source_files  = "IBSwiftToolKit/Classes", "IBSwiftToolKit/Classes/**/*.{h,m,swift}"
  s.exclude_files = "IBSwiftToolKit/Classes/Exclude"



end
