# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "central_authentication/version"

Gem::Specification.new do |s|
  s.name        = "central_authentication_rails2"
  s.version     = CentralAuthentication::VERSION
  s.authors     = ["Hannes Benson"]
  s.email       = ["hannes@mpowered.co.za"]
  s.homepage    = "https://github.com/HannesBenson/CentralAuthenticationRails2"
  s.summary     = %q{Central Authentication using Authlogic on Rails 2}
  s.description = %q{This gem allows you to share a central database and using authlogic stores and retrieves passwords}

  s.rubyforge_project = "central_authentication_rails2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
