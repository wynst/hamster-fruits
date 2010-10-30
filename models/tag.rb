class Tag < ActiveRecord::Base
  has_and_belongs_to_many :facts, :join_table => 'fact_tags'
end

