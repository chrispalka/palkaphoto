class RemoveColumnFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :masthead_image, :text
  end
end
