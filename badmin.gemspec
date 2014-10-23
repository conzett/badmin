$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "badmin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "badmin"
  s.version     = Badmin::VERSION
  s.authors     = ["Graham Conzett"]
  s.email       = ["conzett@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Badmin."
  s.description = "TODO: Description of Badmin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 3'
  s.add_dependency 'haml-rails', '> 0'
	s.add_dependency 'simple_form', '> 3.1.0.rc1'
	s.add_dependency 'jquery-rails', '> 0'
	s.add_dependency 'bootstrap-sass', '~> 3.2.0'
	s.add_dependency 'sass-rails', '>= 3.2'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'pry-rails', '> 0'
end
