Pod::Spec.new do |s|

  s.name         = "HyperSnapInstructions"
  s.version      = "1.0.0"
  s.static_framework = true
  s.summary      = "HyperVerge's iOS Framework for Instruction screens"
  s.description  = "Instructions screens for HyperSnapSDK"
  s.homepage     = "https://github.com/hyperverge/capture-ios-sdk"
  s.author       = "HyperVerge"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.license          = { :type => 'Custom', :file => 'LICENSE' }
  # s.source       = { :http => "https://github.com/hyperverge/HyperSnapInstructions/blob/master/HyperSnapSDK.zip?raw=true"}
  s.source       = { :git => "https://github.com/hyperverge/HyperSnapInstructions.git", :tag => "#{s.version}"}
  # s.source_files = 'HyperSnapInstructions.framework/Headers/*.h'
  # s.public_header_files = "HyperSnapInstructions.framework/Headers/*.h"
  s.ios.vendored_frameworks = "HyperSnapInstructions.xcframework"
  # s.resources = { :http => "https://github.com/hyperverge/HyperSnapInstructions/blob/master/HVInstructionsResources.bundle.zip?raw=true" }
  s.ios.resource = 'HVInstructionsResources.bundle'
  s.swift_version = '5.0'

  s.test_spec 'Tests' do |test_spec|
    test_spec.dependency 'Result', '~> 5.0'
  end


end
