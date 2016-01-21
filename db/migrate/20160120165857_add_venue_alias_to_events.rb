class AddVenueAliasToEvents < ActiveRecord::Migration
  def change
    add_column :events, :venue_alias, :string, default: "Venues"
    change_column :events, :act_alias, :string, :default => "Acts"
  end
end
