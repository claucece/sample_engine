$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "billingleap/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "billingleap"
  s.version     = Billingleap::VERSION
  s.authors     = ["claucece"]
  s.email       = ["soficeli0@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Billingleap."
  s.description = "TODO: Description of Billingleap."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "carrierwave" 
  s.add_dependency "rmagick" 

  s.add_development_dependency "sqlite3"
end
