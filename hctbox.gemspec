$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hctbox/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hctbox"
  s.version     = Hctbox::VERSION
  s.authors     = ["Yuva Kumar"]
  s.email       = ["yuva@codemancers.com"]
  s.homepage    = "https://github.com/code-mancers/hctbox"
  s.summary     = "Hctbox for your rescue!"
  s.description = "Bunch of html/css utilities."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 4.0.0'
  s.add_dependency 'kss', '~> 0.5.0'
  s.add_dependency 'nokogiri', '~> 1.6.0'
  s.add_dependency 'coderay', '~> 1.0.9'

  s.add_development_dependency "sqlite3"
end
