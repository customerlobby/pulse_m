lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pulse_m/version'

Gem::Specification.new do |spec|
  spec.name    = 'pulse_m'
  spec.version = PulseM::Version
  spec.authors = ['Amrinder Singh']
  spec.email   = ['amsingh@beesolvertechnology.com']

  spec.summary     = 'Ruby gem for integration of PulseM Apis'
  spec.description = 'This gem acts a ruby sdk/wrapper for PulseM api'
  spec.homepage    = 'https://github.com/customerlobby/pulse_m'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'https://rubygems.pkg.github.com/customerlobby'
    spec.metadata['homepage_uri']      = spec.homepage
    spec.metadata['source_code_uri']   = spec.homepage
    spec.metadata['changelog_uri']     = "#{spec.homepage}/blob/master/CHANGELOG.md"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.14.1'

  spec.add_runtime_dependency 'faraday', '~> 1.7', '>= 1.7.1'
  spec.add_runtime_dependency 'faraday_middleware', '~> 1.1'
  spec.add_runtime_dependency 'hashie', '~> 4.1'
end
