#
# Be sure to run `pod lib lint TestModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestModule'
  s.version          = '5.0.0'
  s.summary          = 'TestModule'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/GE-GAO-ZHAO/Test-Spec-SourceCode.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gegaozhao1126@gmail.com' => 'gegaozhao1126@gmail.com' }
  s.source           = { :git => 'https://github.com/GE-GAO-ZHAO/Test-Spec-SourceCode.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TestModule/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TestModule' => ['TestModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  #s.dependency 'TALMediator', '~> 3.0.0', :git => 'https://github.com/MY_COMPANY/pod1.git', :commit => '9f9f4fe5b5959e0f2ea89e472eccf7aea6f37eea'
  s.dependency 'SDWebImage'

endpo
