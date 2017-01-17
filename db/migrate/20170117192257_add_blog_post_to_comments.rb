class AddBlogPostToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :blog_post, foreign_key: true
  end
end
