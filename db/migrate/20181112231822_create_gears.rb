class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
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
