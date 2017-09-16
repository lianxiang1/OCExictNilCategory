#
#  Be sure to run `pod spec lint OCAvoidNilCategory.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

 s.name = "OCAvoidNilCategory" 
 s.version = "0.0.1"
 s.summary = "OCAvoidNilCategory nil." 
 s.description = <<-DESC 
                      provide  categories for iOS developer.
                    DESC

 s.homepage = "https://github.com/lianxiang1/OCExictNilCategory" 
 s.license = "MIT" 
 s.license = { :type => "MIT", :file => "LICENSE" } 
 s.author = { "lianxiang1" => "237807878@qq.com" } 

 s.platform = :ios,"8.0"
 s.source = { :git => "https://github.com/lianxiang1/OCExictNilCategory.git", :tag => "0.0.1"} 
 s.source_files =  "OCAvoidNilCate"," OCAvoidNilCategory/OCAvoidNilCate/**/*.{h,m}"
 s.exclude_files = "OCAvoidNilCate/Exclude" 
 s.requires_arc = true

end

