Pod::Spec.new do |s|
  s.name         = 'raygun4apple'
  s.version      = '1.4.1'
  s.summary      = 'Raygun client for Apple platforms'
  s.homepage     = 'https://raygun.com'
  s.authors      = { 'Raygun' => 'hello@raygun.com' }
  s.license      = { :type => 'Custom', :file => 'LICENCE.md' }
  s.source       = { :git => 'https://github.com/MindscapeHQ/raygun4apple.git', :tag => s.version.to_s }
  s.source_files = 'Sources/**/*.{h,m,mm,c,cpp}'
  s.ios.source_files    = 'raygun4apple-iOS/*.h'
  s.tvos.source_files   = 'raygun4apple-tvOS/*.h'
  s.osx.source_files    = 'raygun4apple-macOS/*.h'
  s.ios.exclude_files   = 'Sources/**/NSViewController+RaygunRUM.{h,m}'
  s.tvos.exclude_files  = 'Sources/**/NSViewController+RaygunRUM.{h,m}'
  s.osx.exclude_files   = 'Sources/**/UIViewController+RaygunRUM.{h,m}'
  s.public_header_files = 'Sources/**/RaygunBreadcrumb.h', 
                          'Sources/**/RaygunDefines.h',
                          'Sources/**/RaygunThread.h',
                          'Sources/**/RaygunBinaryImage.h',
                          'Sources/**/RaygunFrame.h',
                          'Sources/**/RaygunErrorMessage.h',
                          'Sources/**/RaygunEnvironmentMessage.h',
                          'Sources/**/RaygunClientMessage.h',
                          'Sources/**/RaygunUserInformation.h',
                          'Sources/**/RaygunClient.h',
                          'Sources/**/RaygunMessageDetails.h',
                          'Sources/**/RaygunMessage.h',
  s.ios.public_header_files  = 'raygun4apple-iOS/raygun4apple_iOS.h'
  s.tvos.public_header_files = 'raygun4apple-tvOS/raygun4apple_tvOS.h'
  s.osx.public_header_files  = 'raygun4apple-macOS/raygun4apple_macOS.h'
  s.requires_arc = true
  s.frameworks   = 'Foundation'
  s.libraries    = 'z', 'c++'
  s.xcconfig     = { 'GCC_ENABLE_CPP_EXCEPTIONS' => 'YES' }
  s.ios.deployment_target  = '10.0'
  s.osx.deployment_target  = '10.10'
  s.tvos.deployment_target = '10.0'
end