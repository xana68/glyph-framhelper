class CreateFormTests < ActiveRecord::Migration
  def change
    create_table :form_tests do |t|
      t.string :string
      t.text :textarea
      t.integer :number
      t.boolean :checkbox
      t.boolean :radio
      t.date :date
      t.time :time
      t.datetime :datetime
      t.attachment :image
      t.attachment :file

      t.timestamps null: false
    end
  end
end
