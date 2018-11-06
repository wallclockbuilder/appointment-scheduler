class AddBookedToTimeslots < ActiveRecord::Migration
  def change
    add_column :timeslots, :booked, :boolean
  end
end
