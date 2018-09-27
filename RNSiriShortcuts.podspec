require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSiriShortcuts"
  s.summary      = "React Native package to integrate with iOS Siri Shotcuts."
  s.description  = <<-DESC
                  RNSiriShortcuts
                   DESC
  s.version      = package["version"]
  s.homepage     = "https://github.com/author/RNSiriShortcuts"
  s.license      = "MIT"
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNSiriShortcuts.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  s.pod_target_xcconfig = {"DEFINES_MODULE" => 'YES'}

  s.dependency "React"
end
