require "#{Rails.root}/app/helpers/coaches_helper"
require 'csv'

include CoachesHelper
namespace :import do

  desc "Import coaches and availability information from csv"
  task coaches: :environment do
    filename = "data.csv"
    counter = 0

    CSV.foreach(filename, headers: true) do |row|
      p row
      p row["Name"]
      p row["Timezone"]
      p row["Day of Week"]
      p row["Available at"]
      p row["Available until"]
      #if coach exists in database then fetch and add availability to that coach
      #if not create a new coach and add availability to that coach
      coach = ""
      if Coach.exists?(name: row["Name"])
        coach = Coach.find_by_name(row["Name"])
        availability = Availability.create!(timezone: row["Timezone"], day_of_week: row["Day of Week"], available_from: row["Available at"], available_to: row["Available until"] )
        timeslots = generateTimeslots(availability)
        availability.timeslots << timeslots
        coach.availabilities << availability
      else
        coach = Coach.create(name:row["Name"])
        availability = Availability.create!(timezone: row["Timezone"], day_of_week: row["Day of Week"], available_from: row["Available at"], available_to: row["Available until"] )
        timeslots = generateTimeslots(availability)
        availability.timeslots << timeslots
        coach.availabilities << availability
      end
      #coach = Coach.create(name: row["Name"], timezone: row["Timezone"], day_of_week: row["Day of Week"], available_at: row["Available at"], available_until: row["Available until"])
      puts "#{name} - #{coach.errors.full_messages.join(",")}" if coach.errors.any?
      counter += 1 if coach.persisted?
    end
    puts "Imported #{counter} coaches"
  end
end
