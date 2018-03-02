![(logo)](http://images.cnitblog.com/blog2015/497279/201505/051004492043385.png)
## lujhPrivate
* 制作自己的开源库，通过cocoapods发布出去
## .podspec文件
* Pod::Spec.new do |s|
s.name        = 'lujhPrivate'
s.version     = '1.0.4'
s.authors     = { 'daniulaolu' => '287929070@qq.com' }
s.homepage    = 'https://github.com/daniulaolu/lujhPrivate'
s.summary     = 'a dropdown menu for ios like wechat homepage.'
s.source      = { :git => 'https://github.com/daniulaolu/lujhPrivate.git',
:tag => s.version.to_s }
s.license     = { :type => "MIT", :file => "LICENSE" }

s.platform = :ios, '7.0'
s.requires_arc = true
s.source_files = "lujhPrivate", "*.{h,m}"
s.resource     = 'lujhPrivate/lujh.bundle'
s.ios.deployment_target = '7.0'
s.frameworks   =  'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony'
s.dependency 'SAMKeychain'
end
