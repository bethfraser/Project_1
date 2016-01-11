class Venue < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true


  belongs_to :event

  has_many :timeslots, dependent: :destroy
  has_many :acts, through: :timeslots
end
