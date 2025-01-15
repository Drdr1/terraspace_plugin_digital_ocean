# lib/terraspace_plugin_digitalocean/clients/digitalocean_client.rb

require 'net/http'
require 'uri'
require 'json'

module TerraspacePluginDigitalOcean
  class DigitalOceanClient
    def initialize(api_token)
      @api_token = api_token
    end

    def list_spaces
      uri = URI.parse("https://api.digitalocean.com/v2/spaces")
      request = Net::HTTP::Get.new(uri)
      request["Authorization"] = "Bearer #{@api_token}"
      
      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end
      
      JSON.parse(response.body)
    end
  end
end
