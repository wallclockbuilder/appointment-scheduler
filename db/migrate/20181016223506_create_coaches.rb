class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :timezone
      t.string :day_of_week
      t.time :available_at
      t.time :available_until

      t.timestamps null: false
    end
  end
end
