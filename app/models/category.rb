class Category < ActiveRecord::Base
  has_many :ressources, foreign_key: :category_id
end
