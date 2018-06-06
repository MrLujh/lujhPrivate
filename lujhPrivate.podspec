Pod::Spec.new do |s|
s.name        = 'lujhPrivate'
s.version     = '6.0.1'
s.authors     = { 'daniulaolu' => '287929070@qq.com' }
s.homepage    = 'https://github.com/MrLujh/lujhPrivate'
s.summary     = 'a dropdown menu for ios like wechat homepage.'
s.source      = { :git => 'https://github.com/MrLujh/lujhPrivate.git',
:tag => s.version.to_s }
s.license     = { :type => "MIT", :file => "LICENSE" }

s.platform = :ios, '7.0'
s.requires_arc = true
s.source_files = 'lujhPrivate/**/*.{h,m}'
s.resource     = 'lujhPrivate/resource/lujh.bundle'
s.ios.deployment_target = '7.0'
s.frameworks   =  'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony'
s.dependency 'SAMKeychain'
s.dependency 'CocoaLumberjack'


s.subspec 'A' do |ss|
   
    ss.source_files = 'lujhPrivate/A/**/*.{h,m}'
    
  end
end
