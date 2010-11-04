require 'yaml'
require 'active_support/core_ext/hash'

module HamsterFruits
  module Settings

    def self.registered(app)
      puts File.join(app.options.root, 'hamster-fruits.yml')

      #http://github.com/tammycravit/yaml_config_file
      settings = YAML.load_file(File.join(app.options.root, 'hamster-fruits.yml'))
      settings = ((settings["global"] || {}).merge!(settings[app.options.environment] || {})).with_indifferent_access
      puts settings
      puts "SETTINGS"
      app.set :settings, settings

      ActiveRecord::Base.establish_connection(
        :adapter => "sqlite3",
        :database  => File.expand_path(settings[:database])
        )

      # require all models
      Dir["models/*.rb"].each {|file| require file}
    end

  end
end

