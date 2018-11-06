class AddFieldsToAvailability < ActiveRecord::Migration
  def change
    add_column :availabilities, :day_of_week, :string
    add_column :availabilities, :timezone, :string
  end
end
