class AddAvailabilityRefToCoaches < ActiveRecord::Migration
  def change
    add_reference :coaches, :coach, index: true, foreign_key: true
  end
end
