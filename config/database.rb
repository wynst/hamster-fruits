module HamsterFruits
  class Database
    def self.connect!
      ActiveRecord::Base.establish_connection(
          :adapter => "sqlite",
          :database  => HamsterFruits.settings[:database]
        )
    end
  end
end

