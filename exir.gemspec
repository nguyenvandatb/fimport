$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "exir/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "exir"
  s.version     = Exir::VERSION
  s.authors     = ["nguyenvandatb"]
  s.email       = ["nguyen.van.datb@framgia.com"]
  s.homepage    = ""
  s.summary     = "Summary of Exir."
  s.description = "Description of Exir."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"
  s.add_dependency "roo", "~> 2.7.0"
  s.add_dependency "roo-xls"
  s.add_development_dependency "sqlite3"
end
