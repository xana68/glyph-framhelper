class RedactorRails::Attachment < RedactorRails::Asset
  has_attached_file :data,
                    url: "/system/redactor_rails/attachments/:id/:filename",
                    path: ":rails_root/public/system/redactor_rails/attachments/:id/:filename"

  validates_attachment_size :data, less_than: 100.megabytes
  validates_attachment :data, content_type: { content_type: /\A*\/.*\Z/ }

  def url_content
    url(:content)
  end

end