class UsersController < ApplicationController
  def index
    @bookings = current_user.bookings.all
    @timeslots = current_user.timeslots.all
  end

  def show
    @user = current_user
  end

end
