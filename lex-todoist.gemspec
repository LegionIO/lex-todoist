require_relative 'lib/legion/extensions/todoist/version'

Gem::Specification.new do |spec|
  spec.name          = 'lex-todoist'
  spec.version       = Legion::Extensions::Todoist::VERSION
  spec.authors       = ['Esity']
  spec.email         = ['matthewdiverson@gmail.com']

  spec.summary       = 'LEX::Todoist'
  spec.description   = 'Used to connect Legion to Todoist'
  spec.homepage      = 'https://bitbucket.org/legion-io/lex-todoist'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://bitbucket.org/legion-io/lex-todoist'
  spec.metadata['changelog_uri'] = 'https://bitbucket.org/legion-io/lex-todoist/src/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop'
end
