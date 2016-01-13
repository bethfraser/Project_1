class AddLoginCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login_code, :string
  end
end
