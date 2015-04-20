class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      t.belongs_to :category, index: true
      t.string :title
      t.string :caption

      t.timestamps null: false
    end
    add_foreign_key :ressources, :categories
  end
end
