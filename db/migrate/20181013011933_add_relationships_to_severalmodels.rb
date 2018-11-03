class AddRelationshipsToSeveralmodels < ActiveRecord::Migration[5.2]
  def change
  	add_column :characters, :user_id, :integer
    add_column :races, :character_id, :integer
    add_column :concepts, :character_id, :integer
    add_column :backgrounds, :character_id, :integer
  end
end
