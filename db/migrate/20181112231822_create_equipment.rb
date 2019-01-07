class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.string :properties
      t.string :weight
      t.string :worth
      t.integer :character_id

      t.timestamps
    end
  end
end
