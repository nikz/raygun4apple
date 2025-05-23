Pod::Spec.new do |s|
  s.name         = 'raygun4apple'
  s.version      = '2.1.3'
  s.summary      = 'Raygun client for Apple platforms'
  s.homepage     = 'https://raygun.com'
  s.authors      = { 'Raygun' => 'hello@raygun.com' }
  s.license      = { :type => 'Custom', :file => 'LICENCE.md' }
  s.source       = { :git => 'https://github.com/MindscapeHQ/raygun4apple.git', :tag => s.version.to_s }
  s.source_files = 'Sources/**/*.{h,m,mm,c,cpp}'
  s.ios.source_files    = 'raygun4apple-iOS/*.h'
  s.tvos.source_files   = 'raygun4apple-tvOS/*.h'
  s.osx.source_files    = 'raygun4apple-macOS/*.h'
  s.exclude_files	= 'Sources/public/raygun4apple_iOS.h', 'Sources/public/raygun4apple_tvOS.h', 'Sources/public/raygun4apple_macOS.h'
  s.ios.exclude_files   = 'Sources/**/NSViewController+RaygunRUM.{h,m}'
  s.tvos.exclude_files  = 'Sources/**/NSViewController+RaygunRUM.{h,m}'
  s.osx.exclude_files   = 'Sources/**/UIViewController+RaygunRUM.{h,m}'
  s.public_header_files = 'Sources/public/RaygunBreadcrumb.h', 
                          'Sources/public/RaygunDefines.h',
                          'Sources/public/RaygunThread.h',
                          'Sources/public/RaygunBinaryImage.h',
                          'Sources/public/RaygunFrame.h',
                          'Sources/public/RaygunErrorMessage.h',
                          'Sources/public/RaygunEnvironmentMessage.h',
                          'Sources/public/RaygunClientMessage.h',
                          'Sources/public/RaygunUserInformation.h',
                          'Sources/public/RaygunClient.h',
                          'Sources/public/RaygunMessageDetails.h',
                          'Sources/public/RaygunMessage.h',
                          'Sources/public/RaygunCrashReportConverter.h'
  s.ios.public_header_files  = 'raygun4apple-iOS/raygun4apple_iOS.h'
  s.tvos.public_header_files = 'raygun4apple-tvOS/raygun4apple_tvOS.h'
  s.osx.public_header_files  = 'raygun4apple-macOS/raygun4apple_macOS.h'
  s.requires_arc = true
  s.frameworks   = 'Foundation'
  s.libraries    = 'z', 'c++'
  s.xcconfig     = { 'GCC_ENABLE_CPP_EXCEPTIONS' => 'YES' }
  s.ios.deployment_target  = '12.0'
  s.osx.deployment_target  = '10.13'
  s.tvos.deployment_target = '12.0'
end
