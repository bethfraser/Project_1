class AddEventIdToAct < ActiveRecord::Migration
  def change
    add_column :acts, :event_id, :integer
  end
end
