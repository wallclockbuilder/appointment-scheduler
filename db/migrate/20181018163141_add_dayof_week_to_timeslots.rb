class AddDayofWeekToTimeslots < ActiveRecord::Migration
  def change
    add_column :timeslots, :day_of_week, :string
  end
end
