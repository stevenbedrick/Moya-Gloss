Pod::Spec.new do |s|
  s.name             = "Moya-Gloss"
  s.version          = "3.0.1"
  s.summary          = "Convenience Gloss bindings for Moya."
  s.description      = <<-EOS
    [Gloss](https://github.com/hkellaway/Gloss) bindings for
    [Moya](https://github.com/Moya/Moya) for fabulous JSON serialization.
    [RxSwift](https://github.com/ReactiveX/RxSwift/) and [ReactiveSwift](https://github.com/ReactiveCocoa/ReactiveSwift/) bindings also included.
    Instructions on how to use it are in
    [the README](https://github.com/spxrogers/Moya-Gloss).
  EOS

  s.homepage         = "https://github.com/spxrogers/Moya-Gloss"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "steven rogers" => "me@srogers.net" }
  s.source           = { :git => "https://github.com/spxrogers/Moya-Gloss.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/spxrogers"

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "Source/*.swift"
    ss.dependency 'Moya', '~> 14.0.0-alpha.1'
    ss.dependency "Gloss", "~> 3.0"
    ss.framework  = "Foundation"
  end

  s.subspec "RxSwift" do |ss|
    ss.source_files = "Source/RxSwift/*.swift"
    ss.dependency "Moya-Gloss/Core"
    ss.dependency 'Moya/RxSwift', '~> 14.0.0-alpha.1'
    ss.dependency 'RxSwift', '~> 5.0'
  end

  s.subspec "ReactiveSwift" do |ss|
    ss.source_files = "Source/ReactiveSwift/*.swift"
    ss.dependency "Moya-Gloss/Core", '~> 14.0.0-alpha.1'
    ss.dependency "Moya/ReactiveSwift", '~> 14.0.0-alpha.1'
    ss.dependency 'ReactiveSwift', '~> 6.0'
  end

  s.subspec "ReactiveCocoa" do |ss|
    ss.dependency "Moya-Gloss/ReactiveSwift"
  end

end
