class Act < ActiveRecord::Base

validates :name, presence: true
validates :name, uniqueness: true 
belongs_to :event

has_many :timeslots
has_many :venues, through: :timeslots
end
