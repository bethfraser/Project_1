class Event < ActiveRecord::Base
  validates :name, presence: true

  has_many :acts
  has_many :venues
end
