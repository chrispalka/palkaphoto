class RemoveSluqFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :sluq, :string
  end
end
