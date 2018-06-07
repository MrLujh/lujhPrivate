Pod::Spec.new do |s|
  s.name     = 'lujhPrivate'
  s.version  = '7.0.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework.'
  s.homepage = 'https://github.com/MrLujh/lujhPrivate'
  s.authors  = { 'MrLujh' => '287929070@qq.com' }
  s.source   = { :git => 'https://github.com/MrLujh/lujhPrivate.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  s.public_header_files = 'lujhPrivate/lujhPrivate.h'
  s.source_files = 'lujhPrivate/lujhPrivate.h'
  
  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif

#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif

#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  s.prefix_header_contents = pch_AF
  
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
  s.subspec 'Serialization' do |ss|
    ss.source_files = 'lujhPrivate/AFURL{Request,Response}Serialization.{h,m}'
    ss.public_header_files = 'lujhPrivate/AFURL{Request,Response}Serialization.h'
    ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.osx.frameworks = 'CoreServices'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'lujhPrivate/AFSecurityPolicy.{h,m}'
    ss.public_header_files = 'lujhPrivate/AFSecurityPolicy.h'
    ss.frameworks = 'Security'
  end

  s.subspec 'Reachability' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.osx.deployment_target = '10.9'
    ss.tvos.deployment_target = '9.0'

    ss.source_files = 'lujhPrivate/AFNetworkReachabilityManager.{h,m}'
    ss.public_header_files = 'lujhPrivate/AFNetworkReachabilityManager.h'

    ss.frameworks = 'SystemConfiguration'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'lujhPrivate/Serialization'
    ss.ios.dependency 'lujhPrivate/Reachability'
    ss.osx.dependency 'lujhPrivate/Reachability'
    ss.tvos.dependency 'lujhPrivate/Reachability'
    ss.dependency 'lujhPrivate/Security'

    ss.source_files = 'lujhPrivate/AF{URL,HTTP}SessionManager.{h,m}', 'lujhPrivate/AFCompatibilityMacros.h'
    ss.public_header_files = 'lujhPrivate/AF{URL,HTTP}SessionManager.h', 'lujhPrivate/AFCompatibilityMacros.h'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.tvos.deployment_target = '9.0'
    ss.dependency 'lujhPrivate/NSURLSession'

    ss.public_header_files = 'UIKit+ lujhPrivate/*.h'
    ss.source_files = 'UIKit+ lujhPrivate'
  end
end