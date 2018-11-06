class AddTimeslotToAvailability < ActiveRecord::Migration
  def change
    add_column :availabilities, :timeslots, :reference
  end
end
