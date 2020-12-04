Pod::Spec.new do |s|
  s.name = 'SystemServiceSwift'
  s.module_name = 'SystemServiceSwift'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'SystemServiceSwift'
  s.homepage = 'https://github.com/coderyi/SystemServiceSwift'
  s.authors = { 'coderyi' => 'coderyi@163.com' }
  s.source = { :git => 'https://github.com/coderyi/SystemServiceSwift.git', :tag => "v#{s.version}" }
  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'SystemServiceSwift/SystemService/**/*.swift'
end
