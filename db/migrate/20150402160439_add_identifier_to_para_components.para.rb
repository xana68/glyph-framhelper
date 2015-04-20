# This migration comes from para (originally 20150203173219)
class AddIdentifierToParaComponents < ActiveRecord::Migration
  def change
    add_column :para_components, :identifier, :string
  end
end
