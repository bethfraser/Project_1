class Event < ActiveRecord::Base
  has_many :acts
  has_many :venues
end
