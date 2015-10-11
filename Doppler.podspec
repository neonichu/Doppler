Pod::Spec.new do |s|
  s.name         = 'Doppler'
  s.version      = '0.0.1'
  s.summary      = 'A library for communicating with OpenRadar.'
  s.homepage     = 'https://github.com/neonichu/Doppler'
  s.license      = 'MIT'

  s.author             = { 'Boris Bügling' => 'boris@buegling.com' }
  s.social_media_url   = 'http://twitter.com/NeoNacho'

  s.platform      = :osx, '10.9'
  s.platform      = :ios, '8.0'
  s.platform      = :tvos, '9.0'
  s.platform      = :watchos, '2.0'

  s.source       = { :git => 'https://github.com/neonichu/Doppler.git',
                     :tag => s.version }
  s.source_files = 'Code'

  s.dependency 'Decodable'
end
