class Ressource < ActiveRecord::Base
  acts_as_orderable
  acts_as_taggable

  belongs_to :category
end
