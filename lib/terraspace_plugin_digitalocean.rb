require "memoist"
require "terraspace"

require "terraspace_plugin_digitalocean/version"
require "terraspace_plugin_digitalocean/autoloader"
TerraspacePluginDigitalOcean::Autoloader.setup

module TerraspacePluginDigitalOcean
  class Error < StandardError; end

  def configure(&block)
    Interfaces::Config.instance.configure(&block)
  end

  def config
    Interfaces::Config.instance.config
  end

  @@logger = nil
  def logger
    @@logger ||= Terraspace.logger
  end

  def logger=(v)
    @@logger = v
  end

  extend self
end

Terraspace::Plugin.register("digitalocean",
  backend: "spaces", # Assuming "spaces" is the backend for DigitalOcean
  config_class: TerraspacePluginDigitalOcean::Interfaces::Config,
  helper_class: TerraspacePluginDigitalOcean::Interfaces::Helper,
  layer_class: TerraspacePluginDigitalOcean::Interfaces::Layer,
  ci_class: TerraspacePluginDigitalOcean::Interfaces::Ci,
  root: File.dirname(__dir__),
)
