class Timeslot < ActiveRecord::Base
  belongs_to :act
  belongs_to :venue

  has_many :bookings
  has_many :users, through: :bookings



  validate :check_venue_clashes
  validate :check_act_clashes



  def check_venue_clashes
      current_venue = Venue.find(venue_id)
      if current_venue.timeslots.any? { |timeslot| start_time.between?(timeslot.start_time, timeslot.end_time) || end_time.between?(timeslot.start_time, timeslot.end_time) }
     errors.add(current_venue.name, "already has a performance booked during that time")
      end
  end

  def check_act_clashes
      current_act = Act.find(act_id)
      if current_act.timeslots.any? { |timeslot| start_time.between?(timeslot.start_time, timeslot.end_time) || end_time.between?(timeslot.start_time, timeslot.end_time) }
     errors.add(current_act.name, "already has a performance booked during that time")
      end
  end

end
