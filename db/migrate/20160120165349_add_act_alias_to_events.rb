class AddActAliasToEvents < ActiveRecord::Migration
  def change
    add_column :events, :act_alias, :string, default: "Act"
  end
end
