class CreateTextPosts < ActiveRecord::Migration
  def change
    create_table :text_posts do |t|
      t.string :title, null: false
      t.text :body, null: false
    end
  end
end
