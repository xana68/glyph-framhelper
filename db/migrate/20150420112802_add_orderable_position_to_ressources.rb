class AddOrderablePositionToRessources < ActiveRecord::Migration
  def change
    add_column :ressources, :position, :integer, default: 0
    add_index :ressources, :position
  end
end
