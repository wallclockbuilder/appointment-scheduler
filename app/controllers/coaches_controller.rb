class CoachesController < ApplicationController
  def schedule
  end

  def timeslot
    #change the booked timeslot to true
    @timeslot = Timeslot.find_by_id(timeslot_params[:id])
    @timeslot.booked = true
    @timeslot.save
    @coach = Coach.find_by_name(timeslot_params[:coach_name])
  end

  def book
    #fetch all the coaches for display
    @coaches = Coach.all
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:id, :coach_name)
  end
end
