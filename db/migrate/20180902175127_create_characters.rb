class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.string :player_name
      t.string :age
      t.string :gender
      t.string :eyes
      t.string :height
      t.string :hair
      t.string :weight
      t.text :gear
      t.text :concept
      t.text :description
      t.text :background
      t.text :race
      t.text :history
      t.text :crossroads
      t.text :notes

      t.timestamps
    end
  end
end
