class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.time :available_from
      t.time :available_to

      t.timestamps null: false
    end
  end
end
