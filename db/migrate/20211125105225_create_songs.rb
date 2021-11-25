class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title, null:false
      t.string :artist, null:false
      t.string :album, null: false
      t.string :duration, null: false

      t.timestamps
    end
  end
end
