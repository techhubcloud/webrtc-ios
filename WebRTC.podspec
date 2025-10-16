Pod::Spec.new do |s|
  s.name             = 'WebRTC'
  s.version          = '1.3.0'
  s.summary          = 'WebRTC iOS XCFramework with customize audio encode/decode'
  s.homepage         = 'https://webrtc.googlesource.com/src'
  s.license          = { :type => 'BSD', :file => 'LICENSE' }
  s.author           = { 'airfeed' => 'admin.airfeed@kbinvt.com' }
  s.platform         = :ios, '11.0'
  s.swift_version    = '5.0'
  s.source = {
    :http => 'https://github.com/techhubcloud/webrtc-ios/releases/download/1.3.0/WebRTC.xcframework.zip'
  }
  # Point at your XCFramework
  s.vendored_frameworks = 'WebRTC.xcframework'

  # Expose all headers from every slice of the XCFramework
  s.public_header_files = 'WebRTC.xcframework/**/*.framework/Headers/*.h'

  # We’re shipping a static XCFramework
  s.static_framework = true

  # (Optional) if you need these system frameworks
  s.frameworks = %w(
    AVFoundation
    CoreMedia
    CoreVideo
    VideoToolbox
    AudioToolbox
  )
end
