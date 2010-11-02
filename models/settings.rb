#http://github.com/tammycravit/yaml_config_file

require 'yaml'

module HamsterFruits
  def settings
    unless @settings
      app_config_yml = YAML.load(File.read('hamster-fruits.yaml'))
      @settings = (app_config_yml["global"] || {}).merge!(app_config_yml[Sinatra.env] || {})).with_indifferent_access
    end
    @settings
  end
end

