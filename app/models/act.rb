class Act < ActiveRecord::Base

validates :name, presence: true
validates :name, uniqueness: true 
belongs_to :event

has_many :timeslots, dependent: :destroy
has_many :venues, through: :timeslots

has_and_belongs_to_many :keywords
end
