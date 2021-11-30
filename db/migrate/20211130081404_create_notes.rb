class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.belongs_to :song, index: true, foreign_key: true, null: false
      t.text :note, null: false

      t.timestamps null: false
    end
  end
end
