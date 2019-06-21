#
#  Be sure to run `pod spec lint OpenAliPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

 

  s.name         = "OpenAliPaySDK"
  s.version      = "15.6.4"
  s.summary      = "Mirror Of AliPaySDK."

 
  s.description  = <<-DESC
                   Mirror Of AliPaySDK. Make it easier.
                   DESC

  s.homepage     = "https://github.com/JarvanMo/OpenAliPaySDK"


  
  s.license      = { :type => "MIT", :file => "LICENSE" }


 

  s.author             = { "JarvanMo" => "jarvan.mo@gmail.com" }
  s.source        = { :git => "https://github.com/JarvanMo/OpenAliPaySDK.git", :tag => "#{s.version}" }

  
  s.exclude_files = "Classes/Exclude"
  s.resource      = "AlipaySDK.bundle"

  s.frameworks    = "Foundation", "UIKit", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "CoreMotion"
  s.libraries     = "z", "c++"
  s.vendored_frameworks = "AlipaySDK.framework"

  s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

  s.platform      = :ios,'8.0'
  s.requires_arc  = true
 
  s.prepare_command = <<-EOF
    # 创建Base Module
    rm -rf AlipaySDK.framework/Modules
    mkdir AlipaySDK.framework/Modules
    touch AlipaySDK.framework/Modules/module.modulemap
    cat <<-EOF > AlipaySDK.framework/Modules/module.modulemap
    framework module AlipaySDK {
      umbrella header "AlipaySDK.h"
      export *
      link "c++"
      link "z"
    }
    \EOF
  EOF

end
