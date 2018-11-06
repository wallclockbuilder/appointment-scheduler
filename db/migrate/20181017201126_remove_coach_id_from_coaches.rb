class RemoveCoachIdFromCoaches < ActiveRecord::Migration
  def change
    remove_column :coaches, :coach_id, :integer
  end
end
