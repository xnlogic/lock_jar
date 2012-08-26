# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "lock_jar"
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Guymon"]
  s.date = "2012-08-26"
  s.description = "Manage Jar files for Ruby. In the spirit of Bundler, a Jarfile\n  is used to generate a Jarfile.lock that contains all the resolved jar dependencies for scopes runtime, compile, and test.\n  The Jarfile.lock can be used to populate the classpath"
  s.email = "michael@tobedevoured.com"
  s.executables = ["lockjar"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/lockjar",
    "lib/lock_jar.rb",
    "lib/lock_jar/buildr.rb",
    "lib/lock_jar/cli.rb",
    "lib/lock_jar/dsl.rb",
    "lib/lock_jar/maven.rb",
    "lib/lock_jar/resolver.rb",
    "lib/lock_jar/runtime.rb",
    "lib/lock_jar/version.rb",
    "lock_jar.gemspec",
    "spec/Jarfile",
    "spec/lock_jar/cli_spec.rb",
    "spec/lock_jar/dsl_spec.rb",
    "spec/lock_jar/maven_spec.rb",
    "spec/lock_jar/resolver_spec.rb",
    "spec/lock_jar/runtime_spec.rb",
    "spec/lock_jar_spec.rb",
    "spec/pom.xml",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/mguymon/lock_jar"
  s.licenses = ["Apache"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Manage Jar files for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<naether>, ["~> 0.8.5"])
      s.add_runtime_dependency(%q<highline>, ["~> 1.6.13"])
      s.add_runtime_dependency(%q<commander>, ["~> 4.1.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.9.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<yard>, ["~> 0.8.0"])
    else
      s.add_dependency(%q<naether>, ["~> 0.8.5"])
      s.add_dependency(%q<highline>, ["~> 1.6.13"])
      s.add_dependency(%q<commander>, ["~> 4.1.2"])
      s.add_dependency(%q<rspec>, ["~> 2.9.0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<yard>, ["~> 0.8.0"])
    end
  else
    s.add_dependency(%q<naether>, ["~> 0.8.5"])
    s.add_dependency(%q<highline>, ["~> 1.6.13"])
    s.add_dependency(%q<commander>, ["~> 4.1.2"])
    s.add_dependency(%q<rspec>, ["~> 2.9.0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<yard>, ["~> 0.8.0"])
  end
end

