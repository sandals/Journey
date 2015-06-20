class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :postable, polymorphic: true
      t.timestamps null: false
    end

    add_index :posts, :postable_id
  end
end
