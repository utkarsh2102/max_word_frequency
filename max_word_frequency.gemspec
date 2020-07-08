# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'max_word_frequency'
  spec.version       = '0.0.1'
  spec.authors       = ['Utkarsh Gupta']
  spec.email         = ['utkarsh@debian.org']

  spec.summary       = 'Calculating Maximum Word Frequency.'
  spec.description   = 'Rails C1M2: Programming Assignment: Calculating Maximum Word Frequency.'
  spec.homepage      = 'https://github.com/utkarsh2102/max_word_frequency'
  spec.license       = 'MIT'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')
  spec.metadata['homepage_uri'] = spec.homepage
  spec.files = Dir['module2_assignment.rb', 'solution.rb', 'test.txt']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop-packaging', '~> 0.1.1'
end
