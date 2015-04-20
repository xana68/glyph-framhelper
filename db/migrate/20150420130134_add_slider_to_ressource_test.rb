class AddSliderToRessourceTest < ActiveRecord::Migration
  def change
    add_column :form_tests, :slider, :integer
  end
end
