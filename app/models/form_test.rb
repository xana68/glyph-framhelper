class FormTest < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 2.megabytes

  has_attached_file :file
  do_not_validate_attachment_file_type :file
end
