# lib/terraspace_plugin_digitalocean/logging.rb

module TerraspacePluginDigitalOcean
    module Logging
      def log(message)
        puts "[DigitalOcean Plugin] #{message}"
      end
    end
  end
  