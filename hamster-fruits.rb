require 'bundler'
Bundler.require(:default)

require 'lib/hamster_fruits/settings'


module HamsterFruits
  class Application < Sinatra::Application
    set :root, File.expand_path(File.dirname(__FILE__))
    register HamsterFruits::Settings

    get '/' do
      #haml :index
      "BOOOO"
    end

    get '/facts/by_date_range/:from/:to' do
      content_type :json

      @facts = Fact.by_date_range(params[:from], params[:to])
      @facts.to_json
    end
  end
end

