class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.integer :venue_id
      t.integer :act_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
