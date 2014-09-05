# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: minitest-growler 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-growler"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Luke Pearce"]
  s.date = "2014-09-05"
  s.description = "Growl Notifications for MiniTest v5+"
  s.email = "kulehandluke@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".autotest",
    "CHANGELOG.txt",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/minitest/growler.rb",
    "lib/minitest/growler_plugin.rb",
    "lib/minitest/images/failure.png",
    "lib/minitest/images/success.png",
    "minitest-growler.gemspec",
    "test/helper.rb",
    "test/test_minitest-growler.rb"
  ]
  s.homepage = "http://github.com/kule/minitest-growler"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Growl Notifications for MiniTest v5+"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, [">= 5.0"])
      s.add_runtime_dependency(%q<growl>, ["~> 1.0"])
      s.add_development_dependency(%q<mocha>, ["~> 1.1"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, [">= 5.0"])
      s.add_dependency(%q<growl>, ["~> 1.0"])
      s.add_dependency(%q<mocha>, ["~> 1.1"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 5.0"])
    s.add_dependency(%q<growl>, ["~> 1.0"])
    s.add_dependency(%q<mocha>, ["~> 1.1"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

