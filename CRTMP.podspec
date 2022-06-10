Pod::Spec.new do |spec|
  spec.name = "CRTMP"
  spec.version = "2.3"

  spec.summary = "librtmp from rtmpdump, compatible with NIOBoringSSL."
  spec.description = "librtmp from rtmpdump, compatible with NIOBoringSSL."
  spec.homepage = "https://rtmpdump.mplayerhq.hu"
  spec.author = { "Yi Ding" => "yi.ding5@nio.com" }
  spec.license = { :type => "Apache 2.0", :file => "License.txt" }

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"

  spec.swift_version = "5.5"

  spec.source = { :git => "https://github.com/VaslD/CRTMP.git", :tag => "v#{spec.version}" }

  spec.source_files = [
    "Sources/CRTMP/include/*.h",
    "Sources/CRTMP/*.c",
  ]

  spec.public_header_files = "Sources/CRTMP/include/{amf,log,http,rtmp}.h"

  spec.pod_target_xcconfig = {
    "HEADER_SEARCH_PATHS" => '"Sources/CRTMP/include"',
  }

  spec.libraries = "z"
  spec.dependency "CNIOBoringSSL", "~> 2.14.1"
end
