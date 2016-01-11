class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :acts, :keywords do |t|
      # t.index [:act_id, :keyword_id]
      # t.index [:keyword_id, :act_id]
    end
  end
end
