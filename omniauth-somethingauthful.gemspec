# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-somethingauthful/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-somethingauthful"
  s.version     = OmniAuth::SomethingAuthful::VERSION
  s.authors     = ["Chad Godsey"]
  s.email       = ["godseychad@gmail.com"]
  s.homepage    = "https://github.com/ChadyG/omniauth-somethingauthful"
  s.summary     = "SomethingAuthful strategy for OmniAuth"

  s.rubyforge_project = "omniauth-somethingauthful"

  s.files         = `git ls-files`.split("\n") - `git ls-files examples`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "omniauth-openid"
  s.add_runtime_dependency "multi_json"
end
