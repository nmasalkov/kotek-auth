require_relative 'lib/kotek/auth/version'

Gem::Specification.new do |spec|
  spec.name          = "kotek-auth"
  spec.version       = Kotek::Auth::VERSION
  spec.authors       = ["Nikita Masalkov"]
  spec.email         = ["nikitamasalkov.tang@gmail.com"]

  spec.summary       = %q{Pet gem}
  spec.description   = %q{Pet gem}
  spec.homepage      = "https://github.com/nmasalkov"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/nmasalkov/kotek-auth"

  spec.metadata["homepage_uri"] = "https://github.com/nmasalkov"
  spec.metadata["source_code_uri"] = "https://github.com/nmasalkov/kotek-auth"
  spec.metadata["changelog_uri"] = "https://github.com/nmasalkov/kotek-auth"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "jwt"

end
