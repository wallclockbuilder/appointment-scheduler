class AddAvailabilityIdToTimeslot < ActiveRecord::Migration
  def change
    add_column :timeslots, :availability_id, :integer
  end
end
