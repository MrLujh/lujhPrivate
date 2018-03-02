![(logo)](http://images.cnitblog.com/blog2015/497279/201505/051004492043385.png)
## lujhPrivate
* 制作自己的开源库，通过cocoapods发布出去
## podspec文件
* Pod::Spec.new do |s|
* s.name        = 'lujhPrivate'
* s.version     = '1.0.4'
* s.authors     = { 'daniulaolu' => '287929070@qq.com' }
* s.homepage    = 'https://github.com/daniulaolu/lujhPrivate'
* s.summary     = 'a dropdown menu for ios like wechat homepage.'
* s.source      = { :git => 'https://github.com/daniulaolu/lujhPrivate.git',
* :tag => s.version.to_s }
* s.license     = { :type => "MIT", :file => "LICENSE" }
* s.platform = :ios, '7.0'
* s.requires_arc = true
* s.source_files = "lujhPrivate", "*.{h,m}"
* s.resource     = 'lujhPrivate/lujh.bundle'
* s.ios.deployment_target = '7.0'
* s.frameworks   =  'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony'
* s.dependency 'SAMKeychain'
* end

## 制作方法

### 1.写好代码，上传到github

      //github上创建项目仓库的时候记得创建LICENSE(许可证/授权)文件,此文件必须要有

### 2.将自己的项目打成tag
```objc   
      //因为cocoapods是依赖tag版本的,所以必须打tag,以后再次更新只需要把你的项目打一个tag，然后修改.podspec文件中的版本接着提交到cocoapods官方就可以了,提交命令请看下面
    
      //在终端执行以下命令：为git打tag, 第一次需要在前面加一个v
 
      //git tag "v1.0.0"     
      //git push --tags
```
