class Venue < ActiveRecord::Base
  belongs_to :event

  has_many :timeslots
  has_many :acts, through: :timeslots
end
