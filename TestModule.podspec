#
# Be sure to run `pod lib lint TestModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TestModule'
    s.version          = '6.0.1'
    s.summary          = 'TestModule'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC

    s.homepage         = 'https://github.com/GE-GAO-ZHAO/Test-Spec-SourceCode'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'gegaozhao' => 'gegaozhao1126@gmail.com' }
    s.source           = { :git => 'https://github.com/GE-GAO-ZHAO/Test-Spec-SourceCode.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'

    s.subspec 'MediatorCategary' do |mediatorCategary|
        mediatorCategary.source_files = 'TestModule/Classes/MediatorCategary/*.{h,m}'
    end

    s.subspec 'TargetAction' do |targetAction|
        targetAction.source_files = 'TestModule/Classes/TargetAction/*.{h,m}'
        targetAction.dependency 'TestModule/ModuleABussiness'
    end

    s.subspec 'ModuleABussiness' do |moduleABussiness|
        moduleABussiness.source_files = 'TestModule/Classes/ModuleABussiness/*.{h,m}'
    end

    # s.resource_bundles = {
    #   'TestModule' => ['TestModule/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'

    # 依赖的公开framework
    #s.frameworks = 'UIKit', 'Foundation'

    # 依赖的私有的framework
    #s.ios.vendored_frameworks = "xxx/**/*.framework"

    # 依赖的公开的.a

    # 依赖的私有的 .a
    #s.ios.vendored_libraries = "xxx/**/*.a”

    # 依赖公开库
    #s.dependency 'SDWebImage'
    #s.dependency 'AFNetworking', '~> 2.3'

    # 依赖其他的私有库
    #s.dependency 'TestPodSourceLayered'
    s.dependency 'TALMediator'

    # 是否支持ARC
    #s.requires_arc = true

end
