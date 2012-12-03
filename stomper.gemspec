$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'stomper/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'stomper'
  s.version     = Stomper::VERSION
  s.authors     = ['Ilya Scharrenbroich']
  s.email       = ['N/A']
  s.homepage    = 'TODO'
  s.summary     = 'Simple Rails wrapper framework for Stomp gem'
  s.description = 'TODO: Description of Stomper.'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['rspec/**/*']
  s.require_paths = ['lib']

  s.add_dependency 'activesupport'
  s.add_dependency 'stomp', '~> 1.2.7'

  s.add_development_dependency 'rspec'
end
