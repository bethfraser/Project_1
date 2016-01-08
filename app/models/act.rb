class Act < ActiveRecord::Base

belongs_to :event

has_many :timeslots
has_many :venues, through: :timeslots
end
