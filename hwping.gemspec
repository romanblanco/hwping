$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'hwping/constants'

Gem::Specification.new do |s|
  s.name             = 'hwping'
  s.version          = HWPing::VERSION
  s.license          = 'GPL-2'
  s.summary          = 'Hardware Pinger'
  s.description      = 'IRC bot for HW pinging with the Dream Cheeky Thunder missile launcher'
  s.authors          = 'Dávid Halász'
  s.email            = 'skateman@skateman.eu'
  s.homepage         = HWPing::REPO_URL

  s.require_paths    = ['lib']

  s.executables      = 'hwping'

  s.files            = Dir['lib/**/*.rb', 'ext/**/*.{cpp,rb,h}']

  s.extensions       = ['ext/hwping/extconf.rb']

  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'libusb', '~> 0.5.1'
  s.add_dependency 'cinch', '~> 2.3.1'
  s.add_dependency 'rake-compiler', '~> 0.9.7'

  s.add_development_dependency 'codecov', '~> 0.1.4'
  s.add_development_dependency 'rake', '~> 10.5.0'
  s.add_development_dependency 'rspec', '~> 3.4.0'
  s.add_development_dependency 'rubocop', '~> 0.37.2'
  s.add_development_dependency 'simplecov', '~> 0.11.2'
end
