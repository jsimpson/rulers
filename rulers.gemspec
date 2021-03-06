require_relative 'lib/rulers/version'

Gem::Specification.new do |spec|
  spec.name          = 'rulers'
  spec.version       = Rulers::VERSION
  spec.authors       = ['Jonathan Simpson']
  spec.email         = ['jsimpson.github@gmail.com']

  spec.summary       = 'A Rack web framework.'
  spec.description   = 'Following along with the Rebuilding Rails series.'
  spec.homepage      = 'https://github.com/jsimpson/rulers'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.2')

  spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/jsimpson/rulers'
  spec.metadata['changelog_uri'] = 'https://github.com/jsimpson/rulers'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rack'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'solargraph'
end
