module HamsterFruits
  class Application < Sinatra::Application
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

