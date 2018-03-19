Pod::Spec.new do |s|
s.name        = 'lujhPrivate'
s.version     = '2.0.0'
s.authors     = { 'daniulaolu' => '287929070@qq.com' }
s.homepage    = 'https://github.com/daniulaolu/lujhPrivate'
s.summary     = 'a dropdown menu for ios like wechat homepage.'
s.source      = { :git => 'https://github.com/daniulaolu/lujhPrivate.git',
:tag => s.version.to_s }
s.license     = { :type => "MIT", :file => "LICENSE" }

s.platform = :ios, '7.0'
s.requires_arc = true
s.source_files = 'lujhPrivate/**/*.{h,m}'
s.resource     = 'lujhPrivate/lujh.bundle'
s.ios.deployment_target = '7.0'
s.frameworks   =  'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony'
s.dependency 'SAMKeychain'
end
