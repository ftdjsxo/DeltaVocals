source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

pod 'SnapKit'
pod 'NVActivityIndicatorView'

target :’DeltaPlay’ do
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            #            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
    end
end
