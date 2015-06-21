class CreateImagePosts < ActiveRecord::Migration
  def change
    create_table :image_posts do |t|

      t.timestamps null: false
    end
  end
end
