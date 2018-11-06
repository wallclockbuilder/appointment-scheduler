module CoachesHelper
  def generateTimeslots(availability)
    #Uses a start and end time interval to generate a list of 30min timeslots.
    #add 30mins to availability.available_from,add to array.
    #fetch last time and add 30mins as long as last timeslot.to time is 30mins less than availability.available_to
    timeslots = []

    if timeslots.empty?
      timeslots << Timeslot.create!(from: availability.available_from, to: availability.available_from + 30.minutes, day_of_week: availability.day_of_week, booked: false)
      puts "---=-=-=-=-=-=-=created timeslot -=-=-=-=-==-=-=-=-" + timeslots.to_s
    end

    puts "=--=timeslots.last-=-=-=" + timeslots.to_s
    while (availability.available_to - timeslots.last.to) >= 30.minutes
      timeslots << Timeslot.create!(from: timeslots.last.to, to: timeslots.last.to + 30.minutes, day_of_week: availability.day_of_week, booked: false)
    end
    return timeslots
  end
end
