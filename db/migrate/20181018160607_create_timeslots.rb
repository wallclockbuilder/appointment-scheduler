class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.time :from
      t.time :to

      t.timestamps null: false
    end
  end
end
