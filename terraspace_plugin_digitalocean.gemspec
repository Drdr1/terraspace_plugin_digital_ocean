require_relative 'lib/terraspace_plugin_digitalocean/version'

Gem::Specification.new do |spec|
  spec.name          = "terraspace_plugin_digitalocean"
  spec.version       = TerraspacePluginDigitalOcean::VERSION
  spec.authors       = ["ahmed darder"]
  spec.email         = ["ahmeddarder157@gmail.com"]

  spec.summary       = "Terraspace DigitalOcean Plugin"
  spec.homepage      = "https://github.com/Drdr1/terraspace_plugin_digital_ocean.git"
  spec.license       = "Apache2.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add dependencies for DigitalOcean
  spec.add_dependency "droplet_kit", "~> 3.0" # DigitalOcean API client
  spec.add_dependency "memoist"
  spec.add_dependency "zeitwerk"
end
