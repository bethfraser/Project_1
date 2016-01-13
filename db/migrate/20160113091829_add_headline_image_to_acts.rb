class AddHeadlineImageToActs < ActiveRecord::Migration
  def change
    add_column :acts, :headline_image, :text
  end
end
