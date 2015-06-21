class AddAttachmentContentToImagePosts < ActiveRecord::Migration
  def self.up
    change_table :image_posts do |t|
      t.attachment :content
    end
  end

  def self.down
    remove_attachment :image_posts, :content
  end
end
