class RemoveAvailabilityFromCoach < ActiveRecord::Migration
  def change
    remove_column :coaches, :availability_id, :integer
  end
end
