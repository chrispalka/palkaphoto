class AddImageColumnToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :masthead_image, :text
  end
end
