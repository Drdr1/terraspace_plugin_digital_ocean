module TerraspacePluginDigitalOcean
    class Autoloader
      def self.setup
        root = File.expand_path('../../', __dir__)
        $LOAD_PATH.unshift("#{root}/lib")
        Dir["#{root}/lib/terraspace_plugin_digitalocean/**/*.rb"].each { |file| require file }
      end
    end
  end
  