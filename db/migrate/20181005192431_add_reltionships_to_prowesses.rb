class AddReltionshipsToProwesses < ActiveRecord::Migration[5.2]
  def change
    add_column :prowesses, :has_prowess_type, :string
    add_column :prowesses, :has_prowess_id, :integer
  end
end
