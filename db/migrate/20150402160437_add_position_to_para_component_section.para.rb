# This migration comes from para (originally 20140930121822)
class AddPositionToParaComponentSection < ActiveRecord::Migration
  def change
    add_column :para_component_sections, :position, :integer
  end
end
