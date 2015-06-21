class ImagePost < ActiveRecord::Base
  has_attached_file :content, styles: {
    medium: '600x600>',
    thumb: '200x200>'
  }
  validates_attachment_content_type :content, content_type: /\Aimage\/.*\Z/
end
