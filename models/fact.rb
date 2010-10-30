class Fact < ActiveRecord::Base
  belongs_to :activity
  has_and_belongs_to_many :tags, :join_table => 'fact_tags'

  def self.by_date_range(from,to)
    where(["start_time >= :start_date AND start_time <= :end_date", { :start_date =>  from, :end_date => to }])
  end
end

