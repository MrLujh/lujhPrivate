Pod::Spec.new do |s|
s.name        = 'lujhPrivate'
s.version     = '7.0.0'
s.authors     = { 'daniulaolu' => '287929070@qq.com' }
s.homepage    = 'https://github.com/MrLujh/lujhPrivate'
s.summary     = 'a dropdown menu for ios like wechat homepage.'
s.source      = { :git => 'https://github.com/MrLujh/lujhPrivate.git',
:tag => s.version.to_s }
s.license     = { :type => "MIT", :file => "LICENSE" }

s.platform = :ios, '7.0'
s.requires_arc = true
s.public_header_files = 'lujhPrivate/lujh.h'
s.source_files = 'lujhPrivate/lujh.h'
s.ios.deployment_target = '7.0'

s.subspec 'B' do |ss|
   
    ss.source_files = 'lujhPrivate/B/**/*.{h,m}'
    ss.public_header_files = 'lujhPrivate/B/**/*.h'
    
  end

s.subspec 'C' do |ss|
   
    ss.dependency 'lujhPrivate/B'
    ss.source_files = 'lujhPrivate/C/**/*.{h,m}'
    ss.public_header_files = 'lujhPrivate/C/**/*.h'
    
  end

end
