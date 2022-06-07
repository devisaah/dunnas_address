require_relative "lib/dunnas_address/version"

Gem::Specification.new do |spec|
  spec.name        = "dunnas_address"
  spec.version     = DunnasAddress::VERSION
  spec.authors     = ["Isadora Dantas"]
  spec.email       = ["devisaah@gmail.com"]
  spec.homepage    = "https://github.com/devisaah/dunnas_address"
  spec.summary     = "Address feature for DunnasCRM."
  spec.description = "Address featire for DunnasCRM."
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3"
end
