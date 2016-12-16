# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purezenta/version'

Gem::Specification.new do |spec|
  spec.name          = "purezenta"
  spec.version       = Purezenta::VERSION
  spec.authors       = ["Giang Thai Cuong"]
  spec.email         = ["thaicuong.giang@gmail.com"]

  spec.summary       = %q{Simple view presenters for your Rails application.}
  spec.description   = %q{Purezenta is an useful way to perform the view related logic clearly instead of hard-coding the logic into the view or storing the logic in the model.}
  spec.homepage      = "https://github.com/rubyanh/purezenta"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
