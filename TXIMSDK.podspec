Pod::Spec.new do |spec|
  spec.name         = 'TXIMSDK'
  spec.version      = '3.5.0'
  spec.platform     = :ios 
  spec.ios.deployment_target = '8.0'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2017 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'TXIMSDK'
  
  spec.requires_arc = true

  spec.source = { :git => 'https://github.com/TencentVideoCloudIM/TIMSDK.git', :tag => spec.version}
  spec.public_header_files = 'iOS/ImSDK.framework/Headers/*.h'
  spec.vendored_frameworks = 'iOS/ImSDK.framework'
  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/TXIMSDK/iOS/ImSDK.framework/Headers/'}
end