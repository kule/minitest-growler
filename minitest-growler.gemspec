# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "minitest-growler"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Luke Pearce"]
  s.date = "2014-09-04"
  s.description = "Growl Notifications for MiniTest 5+"
  s.email = ["kulehandluke@gmail.com"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", "CHANGELOG.rdoc", "Gemfile", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "lib/minitest/growler.rb", "lib/minitest/growler_plugin.rb", "lib/minitest/images/failure.png", "lib/minitest/images/success.png", "minitest-growler.gemspec", "test/minitest-growler_test.rb"]
  s.homepage = "http://github.com/kule/minitest-growler"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "Growl Notifications for MiniTest 5+"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, ["~> 5.0"])
      s.add_runtime_dependency(%q<growl>, ["~> 1.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.11"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<growl>, ["~> 1.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.11"])
    end
  else
    s.add_dependency(%q<growl>, ["~> 1.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.11"])
  end
end
