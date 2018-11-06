class RemoveFieldsFromCoach < ActiveRecord::Migration
  def change
    remove_column :coaches, :day_of_week, :string
    remove_column :coaches, :timezone, :string
    remove_column :coaches, :available_at, :time
    remove_column :coaches, :available_until, :time
  end
end
