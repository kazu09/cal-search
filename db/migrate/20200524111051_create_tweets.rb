class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :title, null: false
      t.string :image
      t.string :text
      t.integer :data, null: false
      t.timestamps
    end
  end
end
