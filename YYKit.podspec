Pod::Spec.new do |s|
  s.name         = 'YYKit'
  s.summary      = 'A collection of iOS components.'
  s.version      = '1.0.10'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/CYSDeveloper/YYKit'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.9'
  s.source       = { :git => 'https://github.com/CYSDeveloper/YYKit.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.ios.source_files = 'YYKit/**/*.{h,m}'
  s.ios.public_header_files = 'YYKit/**/*.{h}'

  s.osx.source_files = 'YYKit/Base/Foundation/*.{h,m}', 'YYKit/Base/YYKitMacro.h'
  s.osx.public_header_files = 'YYKit/Base/Foundation/*.h', 'YYKit/Base/YYKitMacro.h'
  s.osx.exclude_files = 'YYKit/Base/Foundation/NSObject+YYAdd.{h,m}','YYKit/Base/Foundation/NSBundle+YYAdd.{h,m}'

  non_arc_files = 'YYKit/Base/Foundation/NSObject+YYAddForARC.{h,m}', 'YYKit/Base/Foundation/NSThread+YYAdd.{h,m}'
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = non_arc_files
  end

  s.libraries = 'z', 'sqlite3'
  s.osx.frameworks = 'CoreFoundation', 'CoreGraphics'
  s.ios.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
  s.ios.vendored_frameworks = 'Vendor/WebP.framework'

end
