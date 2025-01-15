# lib/terraspace_plugin_digitalocean/interfaces/space_interface.rb

module TerraspacePluginDigitalOcean
  class SpaceInterface
    def initialize(client)
      @client = client
    end

    def list_spaces
      @client.list_spaces
    end
  end
end
