# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vmc/version"

Gem::Specification.new do |s|
  s.name        = "vmc"
  s.version     = VMC::VERSION
  s.authors     = ["Alex Suraci"]
  s.email       = ["asuraci@vmware.com"]
  s.homepage    = "http://cloudfoundry.com/"
  s.summary     = %q{
    Friendly command-line interface for Cloud Foundry.
  }
  s.executables = %w{vmc}

  s.rubyforge_project = "vmc"

  s.files         = %w{LICENSE Rakefile} + Dir.glob("{lib,plugins}/**/*")
  s.test_files    = Dir.glob("spec/**/*")
  s.require_paths = ["lib"]

  s.add_runtime_dependency "json_pure", "~> 1.6.5"
  s.add_runtime_dependency "interact", "~> 0.4.5"
  s.add_runtime_dependency "cfoundry", "~> 0.3.10"
  s.add_runtime_dependency "mothership", "~> 0.0.11"
  s.add_runtime_dependency "manifests-vmc-plugin", "~> 0.4.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
