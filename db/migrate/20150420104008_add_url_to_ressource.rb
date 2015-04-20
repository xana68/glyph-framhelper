class AddUrlToRessource < ActiveRecord::Migration
  def change
    add_column :ressources, :url, :text
  end
end
