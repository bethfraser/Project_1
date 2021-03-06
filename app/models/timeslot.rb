class Timeslot < ActiveRecord::Base
  belongs_to :act
  belongs_to :venue

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings


  validate :check_venue_clashes
  validate :check_act_clashes
  validate :is_during_event



  def check_venue_clashes
      current_venue = Venue.find(venue_id)
      if start_time != nil
      if current_venue.timeslots.any? { |timeslot| start_time.between?(timeslot.start_time, timeslot.end_time) if timeslot.start_time!=nil || end_time.between?(timeslot.start_time, timeslot.end_time) if timeslot.start_time!=nil }
     errors.add(current_venue.name, "already has a performance booked during that time")
      end
    end
  end

  def check_act_clashes
      current_act = Act.find(act_id)
      if start_time
      if current_act.timeslots.any? { |timeslot| start_time.between?(timeslot.start_time, timeslot.end_time) if timeslot.start_time!=nil || end_time.between?(timeslot.start_time, timeslot.end_time) if timeslot.start_time!=nil }
     errors.add(current_act.name, "already has a performance booked during that time")
      end
    end
  end

  def is_during_event
    event_start = Event.find(act.event_id).start_date.to_datetime
    event_end = Event.find(act.event_id).end_date.to_datetime + 1
    if start_time
    unless start_time.between?(event_start, event_end) && end_time.between?(event_start, event_end)
      errors.add("Date/time", "is not during the event")
    end
  end
  end

end
