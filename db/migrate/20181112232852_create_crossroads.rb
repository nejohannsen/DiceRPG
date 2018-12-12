class CreateCrossroads < ActiveRecord::Migration[5.2]
  def change
    create_table :crossroads do |t|
      t.string :title
      t.text :description
      t.text :note
      t.integer :character_id

      t.timestamps
    end
  end
end
