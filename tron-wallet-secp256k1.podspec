Pod::Spec.new do |spec|
    spec.name         = 'tron-wallet-secp256k1'
    spec.version      = '1.0.0'
    spec.ios.deployment_target = "13.0"
    spec.license      = { :type => 'MIT', :file => 'License.md' }
    spec.summary      = 'secp256k1 module for tron-wallet-web3swift'
    spec.homepage     = 'https://github.com/TronLink/tron-wallet-secp256k1'
    spec.author       = 'tronlinkdev'
    spec.source       = { :git => 'https://github.com/TronLink/tron-wallet-secp256k1.git', :tag => String(spec.version) }
    spec.pod_target_xcconfig = {
    'OTHER_CFLAGS' => '-pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1" "${PODS_ROOT}/secp256k1/include"'
  }
    spec.source_files = 'secp256k1/**/*.{c,h}'
    spec.public_header_files = 'secp256k1/include/*.h'
end
