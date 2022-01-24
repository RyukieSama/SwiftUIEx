Pod::Spec.new do |s|
  s.name         = "SwiftUIEx"
  s.summary      = "SwiftUIEx for iOS by.RyukieSama"
  s.version      = "0.0.1"
  # s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ryukie" => "ryukie.sama@gmail.com" }
  s.homepage     = "https://github.com/RyukieSama/SwiftUIEx.git"
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.source       = { :git => 'https://github.com/RyukieSama/SwiftUIEx.git', :tag => s.version}
  s.requires_arc = true
  s.source_files = 'SwiftUIEx/**/*.swift'

end
