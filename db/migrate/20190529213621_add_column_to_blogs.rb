class AddColumnToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :blog_image, :text
  end
end
