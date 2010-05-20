# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{exchangerate}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Giridhar Bandi"]
  s.date = %q{2010-05-20}
  s.description = %q{A gem to convert currencies with ease and at real time .}
  s.email = %q{giridhar dot bandi at gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/exchangerate.rb"]
  s.files = ["MIT-LICENSE", "README.rdoc", "Rakefile", "exchangerate.gemspec", "lib/exchangerate.rb", "test/exchangerate_test.rb", "test/test_helper.rb", "Manifest"]
  s.homepage = %q{http://github.com/giridhar/exchangerate}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Exchangerate", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{exchangerate}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A gem to convert currencies with ease and at real time .}
  s.test_files = ["test/exchangerate_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
