$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_addon/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_addon"
  s.version     = RailsAdminAddon::VERSION
  s.authors     = ["Jonjo McKay"]
  s.email       = ["jonjo@jonjomckay.com"]
  s.homepage    = "http://github.com/jonjomckay/rails_admin_addon"
  s.summary     = "Add fields for Bootstrap's input-prepend and input-append to rails_admin"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(MIT-LICENSE Rakefile README.rdoc)

  s.add_dependency "rails", "~> 3.2.8"
end
