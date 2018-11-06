class AddCoachIdToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :coach_id, :string
  end
end
