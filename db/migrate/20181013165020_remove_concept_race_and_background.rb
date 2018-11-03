class RemoveConceptRaceAndBackground < ActiveRecord::Migration[5.2]
  def change
  	remove_column :characters, :race
  	remove_column :characters, :concept
  	remove_column :characters, :background
  end
end
