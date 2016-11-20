# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locomotive/liquid/extras/version'

Gem::Specification.new do |spec|
  spec.name          = "locomotive-liquid-extras"
  spec.version       = Locomotive::Liquid::Extras::VERSION
  spec.authors       = ["Jordan Thomas"]
  spec.email         = ["mail@jordanthomas.me"]

  spec.summary       = %q{Additional filters for Liquid templates within LocomotiveCMS.}
  spec.description   = %q{Additional filters for Liquid templates within LocomotiveCMS.}
  spec.homepage      = "https://https://github.com/jordanthomas/locomotive-liquid-extras"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.glob('lib/**/*')
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
