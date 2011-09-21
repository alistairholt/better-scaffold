# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "better-scaffold"
  s.version     = "0.0.1"
  s.authors     = ["Alistair Holt"]
  s.email       = ["alistairholt@gmail.com"]
  s.homepage    = "http://github.com/alistairholt/better-scaffold"
  s.summary     = "Better controller scaffolding for Rails generators"
  s.description = "Overrides Rails' scaffold and scaffold_controller generators to generate cleaner controllers. 1) Generates controllers without comment blocks before every action 2) Doesn't use #respond_to blocks be default. Pass --respond-to option if you want them"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rails"
end
