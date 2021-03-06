lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google/apis/version'

Gem::Specification.new do |gem|
  gem.name          = 'google-api-client'
  gem.version       = Google::Apis::VERSION
  gem.authors       = ['Steven Bazyl', 'Tim Emiola', 'Sergio Gomes', 'Bob Aman']
  gem.email         = ['sbazyl@google.com']
  gem.summary       = 'Client for accessing Google APIs'
  gem.homepage      = 'https://github.com/google/google-api-ruby-client'
  gem.license       = 'Apache-2.0'
  gem.metadata      = {
    "documentation_uri" => "https://googleapis.dev/ruby/google-api-client/v#{Google::Apis::VERSION}"
  }
  gem.files         = Dir.glob("lib/**/*") +
                      Dir.glob("generated/**/*.rb") +
                      Dir.glob("docs/**/*") +
                      Dir.glob("bin/**/*") +
                      Dir.glob("*.md") +
                      [".yardopts", "LICENSE"]

  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.require_paths = %w[lib generated]

  gem.required_ruby_version = '>= 2.4'

  gem.add_runtime_dependency 'google-apis-core', '~> 0.0'
  gem.add_development_dependency 'thor', '~> 0.19'
  gem.add_development_dependency 'activesupport', '>= 4.2', '< 5.1'
end
