lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'policial/version'

Gem::Specification.new do |spec|
  spec.name          = 'policial'
  spec.version       = Policial::VERSION
  spec.authors       = ['Volmer Soares']
  spec.email         = ['volmerius@gmail.com']
  spec.summary       = 'Review pull requests for style guide violations'
  spec.description   = 'Review pull requests for style guide violations.'
  spec.homepage      = 'https://github.com/volmer/policial'
  spec.license       = 'MIT'

  spec.files = Dir['lib/**/*'] + ['LICENSE.txt', 'Rakefile', 'README.md']
  spec.require_paths = ['lib']

  spec.add_dependency 'octokit', '~> 3.7'
  spec.add_dependency 'rubocop', '~> 0.2'
end
