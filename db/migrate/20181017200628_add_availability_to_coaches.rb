class AddAvailabilityToCoaches < ActiveRecord::Migration
  def change
    add_reference :coaches, :availability, index: true, foreign_key: true
  end
end
