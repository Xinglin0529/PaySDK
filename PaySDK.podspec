Pod::Spec.new do |s|
    s.name             = 'PaySDK'
    s.version          = '0.1.1'
    s.summary          = 'A short description of PaySDK.'

    s.description      = <<-DESC
    Just test create private pods.
    DESC

    s.homepage         = 'https://github.com/Xinglin0529/PaySDK'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Xinglin0529' => '18668016263@163.com' }
    s.source           = { :git => 'https://github.com/Xinglin0529/PaySDK.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    s.default_subspec = 'Pay', 'Alipay'

    s.subspec 'Alipay' do |ss|
        ss.ios.vendored_frameworks = 'PaySDK/Alipay/AlipaySDK.framework'
        ss.resource = 'PaySDK/Alipay/AlipaySDK.bundle'
        ss.frameworks = 'CoreMotion', 'CoreTelephony', 'CFNetwork', 'SystemConfiguration', 'Security'
        ss.ios.library = 'c++', 'stdc++', 'z'
    end

    s.subspec 'Pay' do |ss|
        ss.source_files = 'PaySDK/Pay/Header/*.h'
        ss.public_header_files = 'PaySDK/Pay/Header/*.h'
        ss.vendored_libraries = 'PaySDK/Pay/*.a'
    end
end
