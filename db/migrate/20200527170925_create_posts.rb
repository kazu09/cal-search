class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :morning , null: false
      t.integer :lunch   , null: false
      t.integer :dinner  , null: false
      t.date :day        , null: false
      t.timestamps
    end
  end
end
