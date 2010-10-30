class Activity < ActiveRecord::Base
  belongs_to :category
  has_many   :facts
end

