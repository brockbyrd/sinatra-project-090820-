class CreatePosts < ActiveRecord::Migration
  def change
      create_table :posts do |post|
          post.string :content
          post.integer :user_id
          post.integer :team_id
      end
  end
end