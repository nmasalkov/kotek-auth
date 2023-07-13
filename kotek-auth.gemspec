require_relative 'lib/kotek/auth/version'

Gem::Specification.new do |spec|
  spec.name          = "kotek-auth"
  spec.version       = Kotek::Auth::VERSION
  spec.authors       = ["Nikita Masalkov"]
  spec.email         = ["nikitamasalkov.tang@gmail.com"]
  spec.summary       = %q{Pet gem}
  spec.description   = %q{Pet gem}
  spec.homepage      = "https://rubygems.org/gems/kotek-auth"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.add_dependency "jwt", "~> 2.6"
end
