#
#  Be sure to run `pod spec lint OpenAliPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

 

  s.name         = "OpenAliPaySDK"
  s.version      = "15.5.5"
  s.summary      = "Mirror Of AliPaySDK."

 
  s.description  = <<-DESC
                   Mirror Of AliPaySDK. Make it easier.
                   DESC

  s.homepage     = "https://github.com/JarvanMo/OpenAliPaySDK"


  
  s.license      = { :type => "MIT", :file => "LICENSE" }


 

  s.author             = { "JarvanMo" => "jarvan.mo@gmail.com" }
  s.source        = { :git => "https://github.com/StenpZ/AliPaySDK_SZ.git", :tag => "#{s.version}" }


  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.resource      = "OpenAliPaySDK/AlipaySDK.bundle"
  s.frameworks    = "Foundation", "UIKit", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "CoreMotion"
  s.libraries     = "z", "c++"
  s.vendored_frameworks = "OpenAliPaySDK/AlipaySDK.framework"

  s.platform      = :ios,'7.0'
  s.requires_arc  = true
 


end
