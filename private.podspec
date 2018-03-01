Pod::Spec.new do |s|
    s.name         = "private"
    s.version      = "0.0.1"
    s.summary      = "An easy way to use pull-to-private"
    s.homepage     = "https://github.com/daniulaolu/privateExemple"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = {"daniulaolu" => "287929070@qq.com"}
    s.platform     = :ios, "6.0"
    s.source       = {:git => "https://github.com/daniulaolu/privateExemple.git", :tag => s.version}
    s.source_files = 'private/private","*.{h,m}"
    s.requires_arc = true
end
