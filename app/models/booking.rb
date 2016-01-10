class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :timeslot

  validate :check_booking_clashes
  validate :check_capacity



  def check_booking_clashes
      current_user = User.find(user_id)
      if current_user.timeslots.any? { |t| t.start_time.between?(timeslot.start_time, timeslot.end_time) || t.end_time.between?(timeslot.start_time, timeslot.end_time) }
     errors.add("You", "already have a performance in your schedule during that time")
      end
  end

  def check_capacity
    timeslot = Timeslot.find(timeslot_id)
    if timeslot.capacity 
      if timeslot.bookings.count >= timeslot.capacity 
      errors.add("This slot", "is already fully booked")
      end
    end
  end
end
