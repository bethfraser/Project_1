class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.text :act_image
      t.text :description

      t.timestamps null: false
    end
  end
end
